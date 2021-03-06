# Advanced Ansible Setup Iterations

- This contains the steps taken to create a app running on port 3000, then port 80
- After this the Database machine was provisioned and /posts was enabled for the web app
        - This requires the app to connect to the DB

## Setting up the app on port 3000

### 1. Transfer the app folder to the web machine

```scp -r app/ vagrant@192.168.33.10:```

### 2. Run the app_setup playbook

```
vagrant ssh aws
cd /etc/ansible
ansible-playbook app_setup.yml
```

### 3. Enter the web machine

```ssh vagrant@192.168.33.10```

### 4. Change into the app folder

```cd app```

### 5. Install npm

```npm install```

### 6. Run the app

```node app.js```

### 6. Test the app in the your browser

```192.168.33.10:3000```

## Setting up the app on port 80

### 1. Transfer the app folder to the web machine

```scp -r app/ vagrant@192.168.33.10:```

### 2. Transfer the nginx.default to the web machine

```scp nginx.default vagrant@192.168.33.10:```

### 3. Run the app_setup playbook

```
vagrant ssh aws
cd /etc/ansible
ansible-playbook app_setup.yml
```

### 4. Enter the web machine

```ssh vagrant@192.168.33.10```

### 5. Change into the app folder

```cd app```

### 6. Install npm

```npm install```

### 7. Run the app

```node app.js```

### 8. Test the app in the your browser

```192.168.33.10:3000```


## Setting up DB and enabling /posts automtically

### 1. Transfer the relevenat folders over

- This is done as folders are not automatically transffered
- Ideally not manual

```
scp -r environment/ vagrant@192.168.33.10:
scp -r app/ vagrant@192.168.33.10:
```
### 2. Run the app_db_setup playbook

```
vagrant ssh aws
cd /etc/ansible
ansible-playbook app_db_setup.yml
```

### 3. Enter the app machine

```ssh vagrant@192.168.33.10```

### 4. Get the app running

- Due to the enviromental variable not setting. Ideally not needed

```
export DB_HOST=mongodb://192.168.33.11:27017/posts
cd app
npm install
pm2 start app.js
```

### 5. See posts on browser

```192.168.33.10```

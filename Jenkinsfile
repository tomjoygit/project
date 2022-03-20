node {
    stage("Git Clone"){
        git credentialsId: 'GIT-CRED', url: 'https://github.com/tomjoygit/project'
    }
    stage ("Maven Building"){
        sh "mvn clean package"
    }
    stage ("Docker image creation"){
        sh "docker build -t tomjoypala/my-java-app ."   
    }
    stage("Docker image push"){
     withCredentials([usernamePassword(credentialsId: 'DOCK-pass', passwordVariable: 'PASS', usernameVariable: 'USER')]) {
        sh "docker login -u ${USER} -p ${PASS}"
      }   
        sh "docker push tomjoypala/my-java-app"
    }
}

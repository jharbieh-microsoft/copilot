from locust import HttpUser, task, between

class QuickstartUser(HttpUser):
    wait_time = between(1, 2.5)

    @task
    def get_homepage(self):
        with self.client.get("/", catch_response=True) as response:
            if response.status_code == 200:
                response.success()
            else:
                response.failure(f"Unexpected status code: {response.status_code}")

    @task
    def get_about(self):
        with self.client.get("/about", catch_response=True) as response:
            if response.status_code == 200:
                response.success()
            else:
                response.failure(f"Unexpected status code: {response.status_code}")

    @task
    def post_api_data(self):
        payload = {"key": "value"}
        with self.client.post("/api/data", json=payload, catch_response=True) as response:
            if response.status_code == 200:
                response.success()
            else:
                response.failure(f"Unexpected status code: {response.status_code}")

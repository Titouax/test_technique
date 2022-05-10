<p align="center">
  <img width="50%" height="auto" src="https://www.per-angusta.com/wp-content/themes/perangusta/images/logo-per-angusta.svg" />
</p>

# Per Angusta - Recruitment test

## Setup

### Pre-requirements

The app is currently running on the ruby version in the file `.ruby-version`

<details>
  <summary>A limited number of libraries need to be setup:</summary>

  * sqlite
  * Redis (v6) for Sidekiq and WebSockets.
  * rbenv (as a Ruby Version Manager)
</details>

## Exercises

### Before starting

- We do not care about stack enhancement in this test.
- We use [Turbo](https://github.com/hotwired/turbo-rails) and [importmaps](https://github.com/rails/importmap-rails) but it does not matter here.
- [Bootstrap](https://getbootstrap.com/) is installed as well.
- Be sure to check existing code before diving into the test. There are plenty of information. Don't reinvent the wheel.
- Feel free to ask any questions if needed.
- We don't expect a specific solution. Do it as you think is the best way to do it.
- Try to not take more than 2 to 3 hours. If you don't know Rails at all, you could take up to 6-8 hours to setup your computer and read documentation.
- Enjoy it! 🚀

### 1. 🕵️ Fix a bug

A client has reported a bug when trying to update a budget. But the application does not show any errors.
We need to dive into the code and fix it.

### 2. 🧑‍💻 Adding a show page for budget

We would like to see budget details in a dedicated page.
Add a show budget page on the correct url with information you might found relevant.

### 3. 👮 Ensure only admins can delete a budget

At this moment, everyone logged in can update and destroy budgets. We need to limit the delete action to admin only.

### 4. 💸 Adding amounts on budget

A budget is defined by a start date, an end date, a target amount, a forecast amount and a saving amount.

*Saving amounts are just the difference between target amounts and forecast amounts.*

A buyer would like to add amounts, which will automatically be split linearly by month between these two dates.

For instance, with these values:

| Description     | value      |
|-----------------|------------|
| start at        | 2022-10-04 |
| End at          | 2023-03-08 |
| Target amount   | 167 000€   |
| Forecast amount | 184 500€   |

We will end up with a table like that:

| Type     | Oct      | Nov      | Dec      | Jan      | Feb      | Mar     |
|----------|----------|----------|----------|----------|----------|---------|
| Target   | 29974.36 | 32115.38 | 33185.90 | 33185.90 | 29974.36 | 8564.10 |
| Forecast | 33115.38 | 35480.77 | 36663.46 | 36663.46 | 33115.38 | 9461.54 |
| Saving   | 3141.03  | 3365.38  | 3477.56  | 3477.56  | 3141.03  | 897.44  |

We would like to be able to access **these amounts quickly**, but it could take **a lot of time to compute** them, so find the best solution for the users...
Once we get the values, we would like to show them in the show budget show view as a table.

✅ You're lucky! It seems like a developer already wrote specs according to the issue's description!

A potential solution could looks like that:
![Screenshot 2022-03-16 at 11 29 17](https://user-images.githubusercontent.com/89008587/158571808-f5e7c428-a4c8-4921-93ce-65c0903fd9ff.png)

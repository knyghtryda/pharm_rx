# PharmRx
This is a test app for the NimbleRx Application

## Requirements
- User may tap on the name of a pharmacy on the home screen, and navigate to a pharmacy details screen.
- The pharmacy details screen should show the pharmacy's name, address, primary phone number, and pharmacy hours (if available)
- There should be a button on the home screen that lets the user start ordering from the closest pharmacy. Assume user's current location is at coordinates (latitude, longitude) = (37.48771670017411, -122.22652739630438)
- On the ordering screen, user should be able to create a selection of medication(s) by adding/deleting from a given set of medications, and complete the order by tapping a confirmation button, which then also takes the user back to the home screen. (Completing the order in this case, simply means locally recording the medications selected by the user for the given pharmacy)
- There should be a check mark next to the name of a pharmacy on the home screen, if the user had placed an order with that pharmacy.
- Tapping on the name should display the pharmacy details, but additionally include the medication(s) ordered.
- User should not be able to order from the same pharmacy more than once.

## Assumptions
- Local data is temporary for the purposes of this test
- Once the nearest pharmacy has an order then the next order will be placed at the next nearest pharmacy
- Once all pharmacies have orders in place the user can no longer place any more orders

## Screenshots
| Home Page | Pharmacy Details Page | Ordering Page |
| --- | --- | --- |
| ![Simulator Screen Shot - iPhone SE (3rd generation) - 2022-08-24 at 18 54 40](https://user-images.githubusercontent.com/1226173/186557035-d2ba0dd6-7683-4619-b3d1-12fea3c8b444.png) | ![Simulator Screen Shot - iPhone SE (3rd generation) - 2022-08-24 at 18 54 47](https://user-images.githubusercontent.com/1226173/186557098-1b505d0e-2f4d-4d59-a72b-978ac4117a48.png) | ![Simulator Screen Shot - iPhone SE (3rd generation) - 2022-08-24 at 18 55 00](https://user-images.githubusercontent.com/1226173/186557163-b9a6aca1-a3c2-47e6-add9-0cb02795ad12.png) |

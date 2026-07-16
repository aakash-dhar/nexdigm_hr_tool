# Annual Increment Process - BRD (Client Source)

> Markdown rendering of the client's requirement document, "Annual Increment Process - Requirement Document Draft 2.docx". The original .docx is preserved alongside this file as the source of record. This rendering exists for readability, search, and diffing. Dashes normalized to hyphens per repo convention; no wording, figures, or formulas changed. See the companion _NOTES.md for provenance and authority.

## SECTION 1 - Business Objective

The organization conducts an annual compensation review exercise to reward employee performance (increment), recognize promotions, address pay corrections, and allocate annual bonuses. Currently, this process is managed through multiple spreadsheets and manual calculations, making it time-consuming, difficult to control, and prone to errors.

The objective is to create a centralized process that:
- Identifies employees eligible for annual increments.
- Calculates standard increments and bonuses based on predefined business rules.
- Allows Practice Heads to review and make controlled adjustments.
- Tracks available increment and bonus budgets.
- Ensures approvals are obtained before final implementation.
- Maintains transparency, consistency, and auditability throughout the exercise with detailed logs and record keeping; information should be available and accessible any time with historic data.

In simple terms, the business wants to replace a spreadsheet-driven increment exercise with a controlled and standardized process with the help of an application.

## SECTION 2 - Current Process

Today, the annual increment exercise is largely manual. Every year, at the beginning of the increment cycle, HR collects employee information, performance ratings, salary details, promotion recommendations, and budget allocations from different sources. HR then runs different simulations to arrive at the increment grid and budgets, then prepares large spreadsheets containing eligible employees and their proposed increments.

These spreadsheets are split practice-wise and distributed to Practice Heads. Each Practice Head reviews employees within their team and makes changes such as:
- Recommending promotion increment %.
- Increasing or reducing increments.
- Awarding correction increments.
- Adjusting bonus amounts.
- Nominating for MC award.

After receiving multiple spreadsheets from Practice Heads, HR manually consolidates the files, validates calculations, checks budgets, verifies with rules, and prepares a final proposal for MC approval.

This process results in: multiple versions of spreadsheets; risk of formula errors; lack of visibility into budget utilization; significant manual effort; limited audit trail; difficulty in maintaining consistent application of rules; manager rule exceptions and tracking them.

## SECTION 3 - Desired Future Process

The future process should operate in a structured and controlled manner, and under one roof HR should run simulations, initiate the annual increment cycle, and load employee information, ratings, salary details, eligibility criteria, increment grids, bonus grids, and budget allocations.

The process should automatically calculate standard increments and bonuses for every eligible employee. Practice Heads should only focus on reviewing the amounts and approving. All recommendations should be reviewed, consolidated, validated, approved, and finalized through a single controlled process. At every stage, budget consumption and rule compliance should remain visible.

### Users Participating in the Annual Increment Process

| User / Role | Purpose in the Process | Key Responsibilities |
|-------------|------------------------|----------------------|
| HR Admin | Owns and manages the overall annual increment exercise from initiation to closure. | Create and manage the review cycle; Upload and validate (in case of integrations) employee, salary, promotion and rating data (for year 1 - historic data will be uploaded); Define eligibility criteria; Run simulations and finalize grids; Configure increment, bonus, and promotion grids; Allocate and manage budgets; Update correction rules; Validate recommendations submitted by Practice Heads; Manage exceptions and approvals; Finalize compensation outcomes; Generate reports and increment letters; Changes to the data from the front end; Update committed numbers (bonus and increment) |
| Proposer (Practice Leader, PL) | Initiates promotion recommendations for employees within their span of control. | Review employees within assigned reporting span; Recommend promotions and correction/special bonus; Assign promotion increment percentages for approved promotions; Recommend correction increments; Recommend special bonuses; Recommend redesignations where applicable; Provide business justification for compensation adjustments and exceptions; Submit recommendations for Practice Head review |
| Reviewer (Practice Head, PH) | Reviews compensation recommendations and manages compensation budgets for their practice. | Review and approve/reject recommendations from Practice Leaders; Review budget utilization |
| Finance Admin | Supports budget planning and financial validation of the exercise. | Participate in compensation simulations; Review cost impact of various increment scenarios; Assist in finalizing compensation budgets; Validate budget utilization and financial implications; Support Managing Committee with financial analysis and reports |
| Managing Committee (MC) | Acts as the final approval authority for promotions, compensation recommendations, budgets, and exceptions. | Review and approve promotion recommendations; Review and approve compensation recommendations; Review and approve exceptions; Review overall financial impact; Approve final compensation budgets and frameworks |
| Super Admin | Responsible for overall system administration and governance. | Manage users and system access; Configure and maintain system masters; Manage role-based access controls; Monitor system activity and audit trails; Support security, compliance, and platform administration; Full control to edit employee data |

## SECTION 4 - End-to-End Process Flow

| Step | Timeline |
|------|----------|
| 1. Define Annual Review Cycle | October |
| 2. Define Eligibility and add exceptions | November |
| 3. Collect Employee information | November |
| 4. Finalize Promotion recommendations | December |
| 5. Complete the simulation - to finalize Increment grid | February |
| 6. Finalize the Correction rules | February |
| 7. Calculate Standard Increment and bonus | March |
| 8. PH to recommend Corrections | March |
| 9. Exceptions handling | March |
| 10. Closure | March |
| 11. Special Award Nominations | April |

(Note: the detailed step write-ups below run to Step 12 and number the steps differently from this timeline table; this is a discrepancy in the source document.)

### Step 1 - Define Annual Review Cycle
HR starts the increment exercise by defining the review period and determining the salary reference date used for calculations.
- Review Start Date: 1 January
- Review End Date: 31 December
- Active Employees as on: 31 December
- Base salary for increment: CTC as on 31 December
- Cut-off for Eligibility: 30 June

### Step 2 - Define Eligibility and add exceptions
HR determines which employees can participate. Eligibility includes:
- Permanent employees.
- Employees who joined before the eligibility cut-off date and are active.
- For Fixed Term employees converted to Permanent, the start date should be the date of conversion.
- Some employees may require special approval if they join after the normal eligibility cut-off.
- HR will also consolidate the Committed cases, where Bonus or Increment or Promotion is committed.

### Step 3 - Collect Employee information
The following data is used during increment calculation and should be visible in the process:

| # | Field Name | Type | Source | Process |
|---|------------|------|--------|---------|
| 1 | Name of the Employee | Text | HRMS/Upload | All |
| 2 | Designation | Text | HRMS/Upload | All |
| 3 | Department | Text | HRMS/Upload | All |
| 4 | Subdepartment | Text | HRMS/Upload | All |
| 5 | DOJ | Text | HRMS/Upload | All |
| 6 | Location | Text | HRMS/Upload | All |
| 7 | Country | Text | HRMS/Upload | All |
| 8 | Employee Band | Text | HRMS/Upload | All |
| 9 | Date of Birth | Date | HRMS/Upload | All |
| 10 | Age | Number | Calculation | All |
| 11 | Last Promotion Date | Date | HRMS/Upload | Promotion Recommendation |
| 12 | Tenure In Year And Months - current role | | | All |
| 13 | Tenure In Year And Months - Total | Alphanumeric | Tenure = FLOOR(Total Months/12) \|\| 'y ' \|\| MOD(TotalMonths,12) \|\| 'm' | All |
| 14 | Learning Hours Achieved - Current Year | | | Promotion Recommendation |
| 15 | Name of Practice Leader (PL) | | | Promotion Recommendation |
| 16 | Name of Practice Head (PH) | | | All |
| 17 | Eligible For Appraisal | Drop Down | Yes, No | All |
| 18 | Total Number Appraisal Days | Number | Fixed Number - working days in a review cycle | Increment Simulation; Increment Processing |
| 19 | Base Total Number Appraisal Days | Number | Calculation (working days). Already undergone review -> full 12-month cycle. First-time increments: prorated from DOJ to 31 December | Increment Simulation; Increment Processing |
| 20 | Employee Employment Status | Text | HRMS/Upload | All |
| 21 | Last Increment Effective Date | NA | NA | NA |
| 22 | Promotion | Drop Down | Yes, No | All |
| 23 | New Designation | Drop Down | Designation Master | All |
| 24 | Existing Fixed CTC (P.A.) | Number | HRMS/Upload | All |
| 25 | Existing Fixed CTC (P.M.) | Number | Existing Fixed CTC (P.A.) / 12 | Increment Simulation; Increment Processing |
| 26 | Rating - Last Year | Text | HRMS/Upload | Increment Simulation; Increment Processing; Promotion Recommendation |
| 27 | Rating - Current Year (Mid-term) | Text | HRMS/Upload | Increment Simulation |
| 28 | Rating - Current Year | Text | HRMS/Upload | Increment Simulation; Increment Processing; Promotion Recommendation |
| 29 | Increment % - Last Year | Percentage | HRMS/Upload | Increment Simulation; Increment Processing |
| 30 | Promotion Increment % | Percentage | From Grid | Increment Simulation; Increment Processing; Promotion Recommendation |
| 31 | Standard Increment % | Percentage | From Grid | Increment Simulation; Increment Processing |
| 32 | Standard Increment Amount (P.A) | Number | (Existing Fixed CTC (P.A.) / Total Number Appraisal Days) x Base Total Number Appraisal Days x Standard Increment % | Increment Simulation; Increment Processing |
| 33 | Promotion Increment Amount (P.A.) | Number | Existing Fixed CTC (P.A.) x Promotion Increment % | Increment Simulation; Increment Processing |
| 34 | Correction Increment % | Percentage | On screen input | Increment Processing |
| 35 | Correction Increment Amount (P.A.) | Number | Existing Fixed CTC (P.A.) x Correction Increment % | Increment Processing |
| 36 | Reasons for Correction Increment | Text | Text field | Increment Processing |
| 37 | Total Increment Amount (P.A) | Number | Standard Increment Amount + Promotion Increment Amount + Correction Increment Amount | Increment Simulation; Increment Processing |
| 38 | Total Increase % | Number | Revised Fixed CTC (P.A.) / Existing Fixed CTC (P.A.) * 100 | Increment Simulation; Increment Processing |
| 39 | Revised Fixed CTC (P.A.) | Number | Existing Fixed CTC (P.A.) + Total Increment Amount (P.A) | Increment Simulation; Increment Processing |
| 40 | Band Range Lower | NA | NA | Increment Simulation; Increment Processing |
| 41 | Band Range Upper | NA | NA | Increment Simulation; Increment Processing |
| 42 | Actual Salary Drawn | Number | HRMS/Upload | Increment Simulation; Increment Processing |
| 43 | Bonus Type | Drop Down | Annual Bonus, Monthly Bonus, No Bonus | Increment Simulation; Increment Processing |
| 44 | Bonus Months Last Year | NA | NA | NA |
| 45 | Bonus In Percentage | Percentage | From Grid | Increment Simulation; Increment Processing |
| 46 | Standard Bonus | Number | Existing Fixed CTC (P.A.) x Bonus In Percentage | Increment Simulation; Increment Processing |
| 47 | Addition / (Reduction) in Bonus | Number | On screen input | Increment Processing |
| 48 | Total Bonus | Number | Standard Bonus + Addition / (Reduction) in Bonus | Increment Simulation; Increment Processing |
| 49 | Total Bonus % | Percentage | Total Bonus / Existing Fixed CTC (P.A.) | Increment Simulation; Increment Processing |
| 50 | Total Revised CTC (Including Bonus) | Number | Revised Fixed CTC (P.A.) + Total Bonus | Increment Simulation; Increment Processing |
| 51 | Total Existing CTC (Including Bonus) | NA | NA | NA |
| 52 | Total Increase % (with Bonus) | NA | NA | NA |
| 53 | Bonus paid - Last Year | Number | Upload | Increment Simulation; Increment Processing |
| 54 | Fixed Monthly Bonus paid - Last Year (Only BPM) | NA | NA | NA |
| 55 | Budget Employee Cost For This Year | NA | NA | NA |
| 56 | Salary Band | NA | NA | NA |
| 57 | Entity Name | Text | HRMS/Upload | All |
| 58 | Tenure (Decimal) | Number | (Reference date - DOJ) / 365 | All |
| 59 | Eligibility for Correction | Drop Down | Yes, No | Increment Processing |
| 60 | Eligibility for Special Bonus | Drop Down | Yes, No | Increment Processing |
| 61 | Retention Tenure | Drop Down | 1 year, 2 years | Increment Processing |
| 62 | Last Working Day | Date | HRMS/Upload | All |
| 63 | Reference date | Date | Review cycle end date | Increment Simulation; Increment Processing |
| 64 | PH remarks | Text | Input | Promotion recommendation |
| 65 | Current Role (Primary and Secondary)* | Text | Only for Manager and above promotion | Promotion recommendation |
| 66 | Key Achievements* | Text | Only for Manager and above promotion | Promotion recommendation |
| 67 | Key Development Areas* | Text | Only for Manager and above promotion | Promotion recommendation |
| 68 | Additional Responsibilities in the New Role* | Text | Only for Manager and above promotion | Promotion recommendation |
| 69 | HR Remarks, if any | Text | Only for Manager and above promotion | Promotion recommendation |
| 70 | Co-CEO Remarks, if any | Text | Only for Manager and above promotion | Promotion recommendation |

### Step 4 - Promotion Recommendation
The Practice Leader (PL) reviews eligible employees within their span of control and may recommend an employee for promotion. The PL may also recommend a redesignation without promotion, where the title is revised but there is no movement to a higher level; in such cases the promotion flag remains "No" while a new designation is proposed.

A promotion credit system is used. Each Practice is allocated a fixed number of promotion credits, calculated as a percentage of total headcount. Different promotion types consume different credits:
- Within-band promotion: 0.5 credit per employee
- Outside-band promotion: 1 credit per employee
- Skip-level promotion: 2 credits per employee

The system should automatically track available, utilized, and remaining promotion credits and highlight recommendations that exceed the allocated limit.

Each designation is mapped to a predefined Band and Grade. Bands are categorized as Band 1 to Band 6, each containing one or more grades (e.g., A, B). Career ladder:

`6B -> 6A -> 5B -> 5A -> 4B -> 4A -> 3B -> 3A -> 2B -> 2A`

- Within-Band Promotion: advances within the same band (e.g., 6B -> 6A, 5B -> 5A).
- Outside-Band Promotion: moves to the next higher band (e.g., 6A -> 5B, 5A -> 4B).
- Skip-Level Promotion: advances by more than one level at band or grade level (e.g., 4A -> 3A, 5B -> 4A), bypassing an intermediate level.

System rules: the system auto-classifies each promotion as Within-Band, Outside-Band, or Skip-Level from current vs proposed Band/Grade; all Skip-Level promotions are highlighted and may require additional approval from designated approver(s); promotion reports and approval workflows display the promotion category for audit and governance.

Once the PL completes recommendations, proposals go to the Practice Head (PH), who may approve, reject, modify, or send back, and may also add additional employees for consideration or remove existing recommendations. Any recommendation outside approved guidelines, exceeding credits, or violating rules is auto-flagged as an exception and stays highlighted throughout approval. Recommendations then move to HR for validation (policy, eligibility, structure, talent guidelines, credits), then to the Managing Committee (MC) for final approval. Once the MC approves, the Promotion Recommendation List is frozen.

After freeze, no new recommendations may be added. Changes are permitted only under exceptional circumstances (resignation, withdrawal, replacement); HR may reopen the specific recommendation for PH review, fully tracked through audit trail and the established approval workflow. The final output is the Approved Promotion Recommendation List.

### Step 5 - Complete the simulation to finalize Increment grid
The HR team, Finance team, and MC undertake a simulation to determine the increment, bonus, promotion, and correction budgets for the cycle. Historical and current compensation data, ratings, and demographics run multiple scenarios evaluating combinations of increment, bonus, promotion percentages and correction budgets, with overall financial impact before finalizing.

The Simulation Module lets HR and Finance create and compare multiple scenarios by modifying rating-wise increment and bonus percentages. This is a pseudo increment calculation; the increment grid is changeable for multiple combinations of Department, Location, band, etc. For each scenario, the system calculates and displays projected impact at employee and organizational level, including total increment cost, total bonus cost, average salary increases, budget utilization, and cost impact by department, band, location, entity, and country. Scenarios are saved, compared, and presented to management.

The approved framework typically consists of: Rating-wise Increment Grid; Rating-wise Bonus Grid; Promotion Increment %; Correction Increment Budget (Correction Kitty); Overall Compensation Budget. These become the governing rules. Rating grids are fully configurable and may vary by country, band, department, entity, tenure, or other criteria.

Illustrative rating grid:

| Rating | India Increment | India Bonus | Poland Increment | Poland Bonus | US Increment | US Bonus | UAE Increment | UAE Bonus |
|--------|-----------------|-------------|------------------|--------------|--------------|----------|---------------|-----------|
| CE | 19.00% | 20.00% | 10.00% | 14.00% | 20.00% | 10.00% | 14.00% | 20.00% |
| M+ | 14.00% | 17.00% | 6.00% | 12.00% | 17.00% | 6.00% | 12.00% | 17.00% |
| ME | 10.00% | 13.00% | 4.00% | 10.00% | 13.00% | 4.00% | 10.00% | 13.00% |
| M- | 8.00% | 10.00% | 2.00% | 8.00% | 10.00% | 2.00% | 8.00% | 10.00% |
| MM | 6.00% | 5.00% | 1.00% | 5.00% | 5.00% | 1.00% | 5.00% | 5.00% |

Promotion increment percentage is configurable by HR and may be maintained by Country, Band, Designation Group, or Promotion Type. Practice Heads may only select values from the approved range on their screen.

### Step 6 - Finalize the Correction rules
Once budgets and grids are finalized, the MC finalizes correction rules for the PH; these guide the PH's use of their correction kitty:
- % employees to get correction; minimum employees in small teams (definition of small team in terms of headcount)
- % employees to get reduction
- % hike an individual should get
- % reduction an individual should get
- Tenure ceiling
- Rating

Retention:
- Employees getting correction within the rules - 1 year
- Employees getting correction outside the rules - 2 years
- If they leave before the retention period, the year-wise amount paid is to be recovered

### Step 7 - Annual Increment process
Once exceptions (eligibility and committed cases), promotion recommendations, budget simulations, and rating grids are finalized, the process moves to execution. HR Admin validates and uploads the latest employee data and maps each employee to the appropriate Practice Head. Since a department may have multiple Practice Heads, this mapping is maintained at individual-employee level rather than department level; if mapped by department, HR admin can change it per employee.

HR assigns application roles and access rights. The system supports differentiated access, particularly for leadership: leadership compensation data is restricted and accessible only to designated user groups (e.g., separate HR administrator roles Admin 1 and Admin 2).

Once configured, HR initiates calculation. The system auto-calculates standard increment %, standard increment amount, standard bonus %, and standard bonus amount for all eligible employees per the approved grids, then releases recommendations to the PL/PH.

During this stage the PL reviews employees within their span and, within approved guidelines: assigns the applicable Promotion Increment % for already-approved promotions (system carries this from the promotion step; mandatory action for all promoted employees); adds Correction Increments where justified and within budget; recommends Special Bonuses where applicable and within approved guidelines; records business justifications for discretionary adjustments.

The system continuously validates against rules, budgets, eligibility, and limits. Anything outside guidelines is auto-highlighted as an exception (if out of budget - it should not allow to make changes) and visible to all reviewers. Once the PL submits, data moves to PH for validation and changes, then to HR for policy/budget/exception review (HR may return to PH). The PL stage is optional; HR can decide to skip it at certain departments.

After HR validation, recommendations go to the MC for final review; the MC can approve, reject, or return to PH (including exceptions), following the same workflow until approved. Upon MC approval, all recommendations are frozen and become the final compensation outcome; employee records become read-only, and the process moves to finalization, reporting, letter generation, and payroll implementation.

### Step 8 - Budget Monitoring
When a PH gives additional increments or bonuses, available budget reduces; when a recommended increment is reduced, the released amount returns to the available correction budget.

Example: Practice Budget = INR 10,00,000; Additional Increment given = INR 1,00,000; Remaining Budget = INR 9,00,000. If INR 20,000 is later removed from another employee, the respective budget becomes INR 9,20,000.

If the PH wishes to make an exception to defined rules, the system should allow it, but the impacted field(s) are auto-highlighted and marked "Exception - Pending Approval." This is configurable and available only if enabled by the Admin, who can also restrict this exception capability to specific fields.

Both the PH and HR Admin have front-end access to update employee information, including status (Active, Inactive, or Resigned).

Inactive Employees:
- Once marked Inactive, further changes to compensation-related information are restricted.
- Standard increment and bonus values are automatically set to Nil.
- Any amount from removing the increment or bonus is not added back to the available budget kitty.

Resigned Employees:
- Once marked Resigned, the increment amount is automatically set to Nil.
- The bonus field remains editable.
- If the PH/PL reduces the bonus amount, the reduced value is not added back to the kitty.
- If the bonus amount is increased beyond the existing allocation, the additional amount is funded from the available kitty and reflected in the budget calculations.

### Step 9 - MC Approval
The consolidated proposal is submitted to the Managing Committee, which reviews: overall increment spend; practice-wise utilization; promotion recommendations; exception cases; final financial impact.

### Step 10 - Closure
Once approval is granted: final salaries are confirmed; final bonuses are confirmed; reports are generated (org, department/subdepartment, and practice-head wise); increment letters are prepared; employees with exceptional increment/bonus or retention clause have it made applicable; revised compensation information becomes available for implementation. This marks the end of the exercise.

### Step 11 - Payroll input
Once the revised salaries, new designation, and Total Bonus are finalized, the same is added to the HRMS for payroll processing.

### Step 12 - Recommendation for Special awards
Once the increment process is complete, the Practice Head recommends nominations for their span for the MC award, nominating employees per predefined numbers. That list goes to HR; post HR review, to the Managing Committee. Final nominations have a fixed amount payable, which populates against their name and is updated in the HRMS for payout.

## SECTION 7 - Exception Handling
Certain situations fall outside normal rules. Examples: employee joined after eligibility cut-off; requested increment exceeds limits; promotion recommendation outside guidelines; correction budget exceeded; exception retention requirements; special business-critical retention cases; budget utilization through the year (conversion/retention). Such cases require additional approval and justification before finalization.

## SECTION 8 - Final Outputs Required
At the end of the process the business expects: final approved increment list; final approved bonus list; promotion recommendations; revised salary; practice-wise budget utilization summary; consolidated management reports; exception reports; audit trail of decisions and changes; increment communication letters.

## SECTION 9 - Success Criteria
The project is successful if: manual spreadsheets are eliminated; increment calculations are performed consistently; fixed-term contract conversion is eligible from date of conversion; employees going through appraisal for the first time are prorated from DOJ; all business rules are applied uniformly based on configuration; budget consumption is visible throughout; addition to budget kitty when standard increment or bonus is reduced; no addition to budget kitty when changes are made for resigned employees; Practice Heads can complete reviews efficiently (good UI and seamless walkthrough); no consolidation required; leadership receives accurate and reliable reports with dynamic filters; every decision can be traced back to a user and justification; final compensation recommendations can be approved and implemented with confidence.

## SECTION 10 - User-wise Screens

| Role | Screen | Purpose |
|------|--------|---------|
| Super Admin | Dashboard | Overall process monitoring |
| Super Admin | User Management | Create users and assign roles |
| Super Admin | Masters | Configure practices, designations, ratings, bands, etc. |
| Super Admin | Audit Trail | Track all changes and approvals |
| HR Admin | Dashboard | Define and monitor promotion/increment cycles |
| HR Admin | Review Cycle Setup | Create promotion/increment cycle |
| HR Admin | Employee & Rating Upload | Import/upload employee, salary and ratings data |
| HR Admin | Budget Setup | Configure increment, correction and bonus budgets |
| HR Admin | Grid Setup | Configure increment, bonus and promotion rules |
| HR Admin | Promotion Review | Review PH-approved promotions |
| HR Admin | Increment Validation | Review PH increment recommendations |
| HR Admin | Exception Management | Handle special approvals |
| HR Admin | Finalization | Freeze and publish final outcomes |
| HR Admin | Reports | Generate reports and outputs |
| Proposer (PL) | Dashboard | View pending promotion actions |
| Proposer (PL) | Promotion Recommendation | Recommend employees for promotion with justifications |
| Proposer (PL) | Status Tracker | Track approval status |
| Reviewer (PH) | Dashboard | View team, budgets and pending actions |
| Reviewer (PH) | Promotion Review | Review and approve PL recommendations |
| Reviewer (PH) | Compensation Planning | Allocate increment, promotion hike and bonus |
| Reviewer (PH) | Budget Tracker | View kitty utilization and balances |
| Reviewer (PH) | Submission | Submit final recommendations |
| Managing Committee (MC) | Dashboard | Overall organization summary |
| Managing Committee (MC) | Promotion Approval | Approve promotion proposals |
| Managing Committee (MC) | Increment Approval | Approve compensation proposals |
| Managing Committee (MC) | Exception Approval | Review policy exceptions |
| Finance Admin | Budget Dashboard | Monitor spend vs budget |
| Finance Admin | Cost Impact Analysis | View compensation cost implications |

All users have access to employee data and can slice and dice by each attribute (band, location, department, sub-department, etc.).

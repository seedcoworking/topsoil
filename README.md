# Topsoil

Topsoil is an API that allows super duper Seed members to gain access to Seed, the best place to work in Toledo, Ohio.

Topsoil allows administrators to add users, cards, and plans to a database and revoke and assign access for members. It is the data that powers the keyless access system at Seed Coworking.

## List membership access

### List user by card number

**Request**

	GET api.seedcoworking.com/users?card={card.identifier}

### List user by id

**Request**

	GET api.seedcoworking.com/users/{user_id}

**Response**

	{
		id: 1,
		email: "jimmy@example.com",
		name: "Jimmy Page",
		status: {
			id: 1,
			name: "Active"
		},
		created_at: "2012-06-06T18:49:25Z",
		updated_at: "2012-06-06T18:49:25Z",

		card: {
			id: 1,
			identifier: "ZFSTAEJCMF",
			created_at: "2012-06-06T18:50:01Z",
			updated_at: "2012-06-06T18:50:01Z"
		},

		plan: {
			id: 1,
			name: "Unlimited",
			created_at: "2012-05-16T11:32:12Z",
			updated_at: "2012-05-16T11:32:12Z",
			schedule: {
				[{
					day: {
						name: "Monday",
						start: "00:00:00",
						end: "23:59:59"
					},
					day: {
						name: "Tuesday",
						start: "00:00:00",
						end: "23:59:59"
					},
					day: {
						name: "Wednesday",
						start: "00:00:00",
						end: "23:59:59"
					},
					day: {
						name: "Thursday",
						start: "00:00:00",
						end: "23:59:59"
					},
					day: {
						name: "Friday",
						start: "00:00:00",
						end: "23:59:59"
					},
					day: {
						name: "Saturday",
						start: "00:00:00",
						end: "23:59:59"
					},
					day: {
						name: "Sunday",
						start: "00:00:00",
						end: "23:59:59"
					}
				}]
			}
		}
	}

### List all active users

**Request**

	GET api.seedcoworking.com/users

**Response**

	[{
		user: {
			id: 1,
			email: "jimmy@example.com",
			name: "Jimmy Page",
			created_at: "2012-06-06T18:49:25Z",
			updated_at: "2012-06-06T18:49:25Z",

			card: {
				id: 1,
				identifier: "ZFSTAEJCMF",
				created_at: "2012-06-06T18:50:01Z",
				updated_at: "2012-06-06T18:50:01Z"
			},

			plan: {
				id: 1,
				name: "Unlimited",
				created_at: "2012-05-16T11:32:12Z",
				updated_at: "2012-05-16T11:32:12Z",
				schedule: {
					[{
						day: {
							name: "Monday",
							start: "00:00:00",
							end: "23:59:59"
						},
						day: {
							name: "Tuesday",
							start: "00:00:00",
							end: "23:59:59"
						},
						day: {
							name: "Wednesday",
							start: "00:00:00",
							end: "23:59:59"
						},
						day: {
							name: "Thursday",
							start: "00:00:00",
							end: "23:59:59"
						},
						day: {
							name: "Friday",
							start: "00:00:00",
							end: "23:59:59"
						},
						day: {
							name: "Saturday",
							start: "00:00:00",
							end: "23:59:59"
						},
						day: {
							name: "Sunday",
							start: "00:00:00",
							end: "23:59:59"
						}
					}]
				}
			}
		},
		user: {
			id: 2,
			email: "robert@example.com",
			name: "Robert Plant",
			created_at: "2012-06-07T19:49:25Z",
			updated_at: "2012-06-07T19:49:25Z",

			card: {
				id: 3,
				identifier: "XHGDTARGD",
				created_at: "2012-06-06T18:50:01Z",
				updated_at: "2012-06-06T18:50:01Z"
			},

			plan: {
				id: 2,
				name: "Medium",
				created_at: "2012-05-16T12:00:18Z",
				updated_at: "2012-05-16T12:00:18Z",
				schedule: {
					[{
						day: {
							name: "Monday",
							start: "09:00:00",
							end: "17:59:59"
						},
						day: {
							name: "Tuesday",
							start: "09:00:00",
							end: "17:59:59"
						},
						day: {
							name: "Wednesday",
							start: "09:00:00",
							end: "17:59:59"
						},
						day: {
							name: "Thursday",
							start: "09:00:00",
							end: "17:59:59"
						},
						day: {
							name: "Friday",
							start: "09:00:00",
							end: "17:59:59"
						},
						day: {
							name: "Saturday",
							start: "00:00:00",
							end: "00:00:00"
						},
						day: {
							name: "Sunday",
							start: "00:00:00",
							end: "00:00:00"
						}
					}]
				}
			}
		}
	}]

### List plans

**Request**

	GET api.seedcoworking.com/plans

**Response**

	[{
		plan: {
			id: 1,
			name: "Unlimited",
			created_at: "2012-05-16T11:32:12Z",
			updated_at: "2012-05-16T11:32:12Z",
			schedule: {
				[{
					day: {
						name: "Monday",
						start: "00:00:00",
						end: "23:59:59"
					},
					day: {
						name: "Tuesday",
						start: "00:00:00",
						end: "23:59:59"
					},
					day: {
						name: "Wednesday",
						start: "00:00:00",
						end: "23:59:59"
					},
					day: {
						name: "Thursday",
						start: "00:00:00",
						end: "23:59:59"
					},
					day: {
						name: "Friday",
						start: "00:00:00",
						end: "23:59:59"
					},
					day: {
						name: "Saturday",
						start: "00:00:00",
						end: "23:59:59"
					},
					day: {
						name: "Sunday",
						start: "00:00:00",
						end: "23:59:59"
					}
				}]
			}
		},
		plan: {
			id: 2,
			name: "Medium",
			created_at: "2012-05-16T12:00:18Z",
			updated_at: "2012-05-16T12:00:18Z",
			schedule: {
				[{
					day: {
						name: "Monday",
						start: "09:00:00",
						end: "17:59:59"
					},
					day: {
						name: "Tuesday",
						start: "09:00:00",
						end: "17:59:59"
					},
					day: {
						name: "Wednesday",
						start: "09:00:00",
						end: "17:59:59"
					},
					day: {
						name: "Thursday",
						start: "09:00:00",
						end: "17:59:59"
					},
					day: {
						name: "Friday",
						start: "09:00:00",
						end: "17:59:59"
					},
					day: {
						name: "Saturday",
						start: "00:00:00",
						end: "00:00:00"
					},
					day: {
						name: "Sunday",
						start: "00:00:00",
						end: "00:00:00"
					}
				}]
			}
		}
	}]

## Add membership access

#### Add users

#### Add membership cards

#### Assign users to cards

#### Assign users to plans

## Revoke membership access

#### Remove users

#### Remove membership cards

#### Deactivate membership cards

## Change membership access

#### Change user plan

#### Change schedules

## Check membership access

#### Is user valid?

#### Is card valid?

#### Is user allowed to be here at this time?

#### Retrieve user

#### Retrieve list of valid users

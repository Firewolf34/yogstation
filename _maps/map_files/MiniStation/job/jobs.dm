/*
	In this file we modify the job datums when the ministation.dm file is included/ticked.
	Since we will be overriden by the job datums, we have to modify the variables in the constructor.
*/

#define JOB_MODIFICATION_MAP_NAME "MiniStation"

/datum/job/New()
	..()
	MAP_JOB_CHECK
	supervisors = "the captain and the head of personnel"

/datum/job/assistant // Here so assistant appears on the top of the select job list.

// Command

/datum/job/captain/New()
	..()
	MAP_JOB_CHECK
	supervisors = "Nanotrasen and Central Command"

/datum/job/hop/New()
	..()
	MAP_JOB_CHECK
	supervisors = "the captain and Central Command"

/datum/job/hop/get_access()
	return get_all_accesses()

// Cargo

/datum/job/cargo_tech/New()
	..()
	MAP_JOB_CHECK
	total_positions = 3
	spawn_positions = 3
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mint, access_mining, access_mining_station)
	minimal_access = list(access_maint_tunnels, access_cargo, access_cargo_bot, access_mining, access_mint, access_mining_station, access_mailsorting)

// Engineering

/datum/job/engineer/New()
	..()
	MAP_JOB_CHECK
	total_positions = 4
	spawn_positions = 4
	access = list(access_eva, access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_external_airlocks, access_construction, access_atmospherics, access_tcomsat)
	minimal_access = list(access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_external_airlocks, access_construction, access_tcomsat, access_atmospherics)

// Medical

/datum/job/doctor/New()
	..()
	MAP_JOB_CHECK
	total_positions = 4
	spawn_positions = 4
	access = list(access_medical, access_morgue, access_surgery, access_chemistry, access_virology, access_genetics)
	minimal_access = list(access_medical, access_morgue, access_surgery)


/datum/job/chemist/New()
	..()
	MAP_JOB_CHECK
	total_positions = 1
	spawn_positions = 1
	access = list(access_medical, access_morgue, access_surgery, access_chemistry, access_virology, access_genetics)
	minimal_access = list(access_medical, access_chemistry)

// Science

/datum/job/scientist/New()
	..()
	MAP_JOB_CHECK
	total_positions = 4
	spawn_positions = 4
	access = list(access_robotics, access_tox, access_tox_storage, access_research, access_xenobiology)
	minimal_access = list(access_tox, access_tox_storage, access_research, access_xenobiology, access_robotics)

// Security

/datum/job/detective/New()
	..()
	MAP_JOB_CHECK
	supervisors = "no one but yourself"
	access = list(access_sec_doors, access_forensics_lockers, access_morgue, access_maint_tunnels, access_court, access_engine)
	minimal_access = list(access_sec_doors, access_forensics_lockers, access_morgue, access_maint_tunnels, access_court)

/datum/job/officer/New()
	..()
	MAP_JOB_CHECK
	total_positions = 4
	spawn_positions = 4
	access = list(access_security, access_sec_doors, access_brig, access_court)
	minimal_access = list(access_security, access_sec_doors, access_brig, access_court)
	
MAP_REMOVE_JOB(chef)
MAP_REMOVE_JOB(hydro)
MAP_REMOVE_JOB(qm)
MAP_REMOVE_JOB(mining)
MAP_REMOVE_JOB(mime)
MAP_REMOVE_JOB(librarian)
MAP_REMOVE_JOB(lawyer)
MAP_REMOVE_JOB(chaplain)
MAP_REMOVE_JOB(chief_engineer)
MAP_REMOVE_JOB(atmos)
MAP_REMOVE_JOB(cmo)
MAP_REMOVE_JOB(rd)
MAP_REMOVE_JOB(roboticist)
MAP_REMOVE_JOB(hos)
MAP_REMOVE_JOB(warden)
MAP_REMOVE_JOB(cyborg)
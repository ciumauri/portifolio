import Technology from "../technology/technology"
import { Level } from "./level"
import { Type } from "./type"

export default interface Project {
	id: number
	name: string
	description: string
	image: string[]
	level: Level
	type: Type
	repository: string
	featured: boolean
	technologies: Technology[]
}

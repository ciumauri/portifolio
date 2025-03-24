export default class Id {
	static new(): string {
		const id1 = Math.random().toString(36).substring(2, 9)
		const id2 = Math.random().toString(36).substring(2, 9)
		const id3 = Math.random().toString(36).substring(2, 9)
		return `${id1}-${id2}-${id3}`
	}
}

console.log(Id.new())
console.log(Id.new())
console.log(Id.new())
console.log(Id.new())
console.log(Id.new())
console.log(Id.new())
console.log(Id.new())
console.log(Id.new())

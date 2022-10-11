import Link from 'next/link'

export default function IndexPage() {
  console.log(process.env);
  console.log(process.env.SECRET_NAME_VAR);
  return (
    <div>
      Hello World.
      <Link href="/about">
        <a>About</a>
      </Link>
    </div>
  )
}

import Link from 'next/link'

export default function IndexPage() {
  return (
    <div>
      Hello World.{process.env.SECRET_NAME_VAR}
      <Link href="/about">
        <a>About</a>
      </Link>
    </div>
  )
}

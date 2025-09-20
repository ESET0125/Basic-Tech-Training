
import propTypes from 'prop-Types'

export default function ProtoTypeComponents() {
  return (
    <div>
      
    </div>
  )
}

ProtoTypeComponents.propType = {
    name: propTypes.string.isRequired,
    usn: propTypes.number.isRequired,
} 
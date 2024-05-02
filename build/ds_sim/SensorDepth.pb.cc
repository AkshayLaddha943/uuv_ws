// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: SensorDepth.proto

#include "SensorDepth.pb.h"

#include <algorithm>

#include <google/protobuf/stubs/common.h>
#include <google/protobuf/stubs/port.h>
#include <google/protobuf/io/coded_stream.h>
#include <google/protobuf/wire_format_lite_inl.h>
#include <google/protobuf/descriptor.h>
#include <google/protobuf/generated_message_reflection.h>
#include <google/protobuf/reflection_ops.h>
#include <google/protobuf/wire_format.h>
// This is a temporary google only hack
#ifdef GOOGLE_PROTOBUF_ENFORCE_UNIQUENESS
#include "third_party/protobuf/version.h"
#endif
// @@protoc_insertion_point(includes)

namespace protobuf_time_2eproto {
extern PROTOBUF_INTERNAL_EXPORT_protobuf_time_2eproto ::google::protobuf::internal::SCCInfo<0> scc_info_Time;
}  // namespace protobuf_time_2eproto
namespace ds_sim {
namespace msgs {
class PressureDepthDefaultTypeInternal {
 public:
  ::google::protobuf::internal::ExplicitlyConstructed<PressureDepth>
      _instance;
} _PressureDepth_default_instance_;
}  // namespace msgs
}  // namespace ds_sim
namespace protobuf_SensorDepth_2eproto {
static void InitDefaultsPressureDepth() {
  GOOGLE_PROTOBUF_VERIFY_VERSION;

  {
    void* ptr = &::ds_sim::msgs::_PressureDepth_default_instance_;
    new (ptr) ::ds_sim::msgs::PressureDepth();
    ::google::protobuf::internal::OnShutdownDestroyMessage(ptr);
  }
  ::ds_sim::msgs::PressureDepth::InitAsDefaultInstance();
}

::google::protobuf::internal::SCCInfo<1> scc_info_PressureDepth =
    {{ATOMIC_VAR_INIT(::google::protobuf::internal::SCCInfoBase::kUninitialized), 1, InitDefaultsPressureDepth}, {
      &protobuf_time_2eproto::scc_info_Time.base,}};

void InitDefaults() {
  ::google::protobuf::internal::InitSCC(&scc_info_PressureDepth.base);
}

::google::protobuf::Metadata file_level_metadata[1];

const ::google::protobuf::uint32 TableStruct::offsets[] GOOGLE_PROTOBUF_ATTRIBUTE_SECTION_VARIABLE(protodesc_cold) = {
  GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(::ds_sim::msgs::PressureDepth, _has_bits_),
  GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(::ds_sim::msgs::PressureDepth, _internal_metadata_),
  ~0u,  // no _extensions_
  ~0u,  // no _oneof_case_
  ~0u,  // no _weak_field_map_
  GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(::ds_sim::msgs::PressureDepth, stamp_),
  GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(::ds_sim::msgs::PressureDepth, depth_),
  GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(::ds_sim::msgs::PressureDepth, pressure_dbar_),
  GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(::ds_sim::msgs::PressureDepth, latitude_deg_),
  0,
  1,
  2,
  3,
};
static const ::google::protobuf::internal::MigrationSchema schemas[] GOOGLE_PROTOBUF_ATTRIBUTE_SECTION_VARIABLE(protodesc_cold) = {
  { 0, 9, sizeof(::ds_sim::msgs::PressureDepth)},
};

static ::google::protobuf::Message const * const file_default_instances[] = {
  reinterpret_cast<const ::google::protobuf::Message*>(&::ds_sim::msgs::_PressureDepth_default_instance_),
};

void protobuf_AssignDescriptors() {
  AddDescriptors();
  AssignDescriptors(
      "SensorDepth.proto", schemas, file_default_instances, TableStruct::offsets,
      file_level_metadata, NULL, NULL);
}

void protobuf_AssignDescriptorsOnce() {
  static ::google::protobuf::internal::once_flag once;
  ::google::protobuf::internal::call_once(once, protobuf_AssignDescriptors);
}

void protobuf_RegisterTypes(const ::std::string&) GOOGLE_PROTOBUF_ATTRIBUTE_COLD;
void protobuf_RegisterTypes(const ::std::string&) {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::internal::RegisterAllTypes(file_level_metadata, 1);
}

void AddDescriptorsImpl() {
  InitDefaults();
  static const char descriptor[] GOOGLE_PROTOBUF_ATTRIBUTE_SECTION_VARIABLE(protodesc_cold) = {
      "\n\021SensorDepth.proto\022\013ds_sim.msgs\032\ntime.p"
      "roto\"m\n\rPressureDepth\022 \n\005stamp\030\001 \002(\0132\021.g"
      "azebo.msgs.Time\022\r\n\005depth\030\002 \002(\001\022\025\n\rpressu"
      "re_dbar\030\003 \002(\001\022\024\n\014latitude_deg\030\004 \002(\001"
  };
  ::google::protobuf::DescriptorPool::InternalAddGeneratedFile(
      descriptor, 155);
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedFile(
    "SensorDepth.proto", &protobuf_RegisterTypes);
  ::protobuf_time_2eproto::AddDescriptors();
}

void AddDescriptors() {
  static ::google::protobuf::internal::once_flag once;
  ::google::protobuf::internal::call_once(once, AddDescriptorsImpl);
}
// Force AddDescriptors() to be called at dynamic initialization time.
struct StaticDescriptorInitializer {
  StaticDescriptorInitializer() {
    AddDescriptors();
  }
} static_descriptor_initializer;
}  // namespace protobuf_SensorDepth_2eproto
namespace ds_sim {
namespace msgs {

// ===================================================================

void PressureDepth::InitAsDefaultInstance() {
  ::ds_sim::msgs::_PressureDepth_default_instance_._instance.get_mutable()->stamp_ = const_cast< ::gazebo::msgs::Time*>(
      ::gazebo::msgs::Time::internal_default_instance());
}
void PressureDepth::clear_stamp() {
  if (stamp_ != NULL) stamp_->Clear();
  clear_has_stamp();
}
#if !defined(_MSC_VER) || _MSC_VER >= 1900
const int PressureDepth::kStampFieldNumber;
const int PressureDepth::kDepthFieldNumber;
const int PressureDepth::kPressureDbarFieldNumber;
const int PressureDepth::kLatitudeDegFieldNumber;
#endif  // !defined(_MSC_VER) || _MSC_VER >= 1900

PressureDepth::PressureDepth()
  : ::google::protobuf::Message(), _internal_metadata_(NULL) {
  ::google::protobuf::internal::InitSCC(
      &protobuf_SensorDepth_2eproto::scc_info_PressureDepth.base);
  SharedCtor();
  // @@protoc_insertion_point(constructor:ds_sim.msgs.PressureDepth)
}
PressureDepth::PressureDepth(const PressureDepth& from)
  : ::google::protobuf::Message(),
      _internal_metadata_(NULL),
      _has_bits_(from._has_bits_) {
  _internal_metadata_.MergeFrom(from._internal_metadata_);
  if (from.has_stamp()) {
    stamp_ = new ::gazebo::msgs::Time(*from.stamp_);
  } else {
    stamp_ = NULL;
  }
  ::memcpy(&depth_, &from.depth_,
    static_cast<size_t>(reinterpret_cast<char*>(&latitude_deg_) -
    reinterpret_cast<char*>(&depth_)) + sizeof(latitude_deg_));
  // @@protoc_insertion_point(copy_constructor:ds_sim.msgs.PressureDepth)
}

void PressureDepth::SharedCtor() {
  ::memset(&stamp_, 0, static_cast<size_t>(
      reinterpret_cast<char*>(&latitude_deg_) -
      reinterpret_cast<char*>(&stamp_)) + sizeof(latitude_deg_));
}

PressureDepth::~PressureDepth() {
  // @@protoc_insertion_point(destructor:ds_sim.msgs.PressureDepth)
  SharedDtor();
}

void PressureDepth::SharedDtor() {
  if (this != internal_default_instance()) delete stamp_;
}

void PressureDepth::SetCachedSize(int size) const {
  _cached_size_.Set(size);
}
const ::google::protobuf::Descriptor* PressureDepth::descriptor() {
  ::protobuf_SensorDepth_2eproto::protobuf_AssignDescriptorsOnce();
  return ::protobuf_SensorDepth_2eproto::file_level_metadata[kIndexInFileMessages].descriptor;
}

const PressureDepth& PressureDepth::default_instance() {
  ::google::protobuf::internal::InitSCC(&protobuf_SensorDepth_2eproto::scc_info_PressureDepth.base);
  return *internal_default_instance();
}


void PressureDepth::Clear() {
// @@protoc_insertion_point(message_clear_start:ds_sim.msgs.PressureDepth)
  ::google::protobuf::uint32 cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  cached_has_bits = _has_bits_[0];
  if (cached_has_bits & 0x00000001u) {
    GOOGLE_DCHECK(stamp_ != NULL);
    stamp_->Clear();
  }
  if (cached_has_bits & 14u) {
    ::memset(&depth_, 0, static_cast<size_t>(
        reinterpret_cast<char*>(&latitude_deg_) -
        reinterpret_cast<char*>(&depth_)) + sizeof(latitude_deg_));
  }
  _has_bits_.Clear();
  _internal_metadata_.Clear();
}

bool PressureDepth::MergePartialFromCodedStream(
    ::google::protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!GOOGLE_PREDICT_TRUE(EXPRESSION)) goto failure
  ::google::protobuf::uint32 tag;
  // @@protoc_insertion_point(parse_start:ds_sim.msgs.PressureDepth)
  for (;;) {
    ::std::pair<::google::protobuf::uint32, bool> p = input->ReadTagWithCutoffNoLastTag(127u);
    tag = p.first;
    if (!p.second) goto handle_unusual;
    switch (::google::protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // required .gazebo.msgs.Time stamp = 1;
      case 1: {
        if (static_cast< ::google::protobuf::uint8>(tag) ==
            static_cast< ::google::protobuf::uint8>(10u /* 10 & 0xFF */)) {
          DO_(::google::protobuf::internal::WireFormatLite::ReadMessage(
               input, mutable_stamp()));
        } else {
          goto handle_unusual;
        }
        break;
      }

      // required double depth = 2;
      case 2: {
        if (static_cast< ::google::protobuf::uint8>(tag) ==
            static_cast< ::google::protobuf::uint8>(17u /* 17 & 0xFF */)) {
          set_has_depth();
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   double, ::google::protobuf::internal::WireFormatLite::TYPE_DOUBLE>(
                 input, &depth_)));
        } else {
          goto handle_unusual;
        }
        break;
      }

      // required double pressure_dbar = 3;
      case 3: {
        if (static_cast< ::google::protobuf::uint8>(tag) ==
            static_cast< ::google::protobuf::uint8>(25u /* 25 & 0xFF */)) {
          set_has_pressure_dbar();
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   double, ::google::protobuf::internal::WireFormatLite::TYPE_DOUBLE>(
                 input, &pressure_dbar_)));
        } else {
          goto handle_unusual;
        }
        break;
      }

      // required double latitude_deg = 4;
      case 4: {
        if (static_cast< ::google::protobuf::uint8>(tag) ==
            static_cast< ::google::protobuf::uint8>(33u /* 33 & 0xFF */)) {
          set_has_latitude_deg();
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   double, ::google::protobuf::internal::WireFormatLite::TYPE_DOUBLE>(
                 input, &latitude_deg_)));
        } else {
          goto handle_unusual;
        }
        break;
      }

      default: {
      handle_unusual:
        if (tag == 0) {
          goto success;
        }
        DO_(::google::protobuf::internal::WireFormat::SkipField(
              input, tag, _internal_metadata_.mutable_unknown_fields()));
        break;
      }
    }
  }
success:
  // @@protoc_insertion_point(parse_success:ds_sim.msgs.PressureDepth)
  return true;
failure:
  // @@protoc_insertion_point(parse_failure:ds_sim.msgs.PressureDepth)
  return false;
#undef DO_
}

void PressureDepth::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // @@protoc_insertion_point(serialize_start:ds_sim.msgs.PressureDepth)
  ::google::protobuf::uint32 cached_has_bits = 0;
  (void) cached_has_bits;

  cached_has_bits = _has_bits_[0];
  // required .gazebo.msgs.Time stamp = 1;
  if (cached_has_bits & 0x00000001u) {
    ::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(
      1, this->_internal_stamp(), output);
  }

  // required double depth = 2;
  if (cached_has_bits & 0x00000002u) {
    ::google::protobuf::internal::WireFormatLite::WriteDouble(2, this->depth(), output);
  }

  // required double pressure_dbar = 3;
  if (cached_has_bits & 0x00000004u) {
    ::google::protobuf::internal::WireFormatLite::WriteDouble(3, this->pressure_dbar(), output);
  }

  // required double latitude_deg = 4;
  if (cached_has_bits & 0x00000008u) {
    ::google::protobuf::internal::WireFormatLite::WriteDouble(4, this->latitude_deg(), output);
  }

  if (_internal_metadata_.have_unknown_fields()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        _internal_metadata_.unknown_fields(), output);
  }
  // @@protoc_insertion_point(serialize_end:ds_sim.msgs.PressureDepth)
}

::google::protobuf::uint8* PressureDepth::InternalSerializeWithCachedSizesToArray(
    bool deterministic, ::google::protobuf::uint8* target) const {
  (void)deterministic; // Unused
  // @@protoc_insertion_point(serialize_to_array_start:ds_sim.msgs.PressureDepth)
  ::google::protobuf::uint32 cached_has_bits = 0;
  (void) cached_has_bits;

  cached_has_bits = _has_bits_[0];
  // required .gazebo.msgs.Time stamp = 1;
  if (cached_has_bits & 0x00000001u) {
    target = ::google::protobuf::internal::WireFormatLite::
      InternalWriteMessageToArray(
        1, this->_internal_stamp(), deterministic, target);
  }

  // required double depth = 2;
  if (cached_has_bits & 0x00000002u) {
    target = ::google::protobuf::internal::WireFormatLite::WriteDoubleToArray(2, this->depth(), target);
  }

  // required double pressure_dbar = 3;
  if (cached_has_bits & 0x00000004u) {
    target = ::google::protobuf::internal::WireFormatLite::WriteDoubleToArray(3, this->pressure_dbar(), target);
  }

  // required double latitude_deg = 4;
  if (cached_has_bits & 0x00000008u) {
    target = ::google::protobuf::internal::WireFormatLite::WriteDoubleToArray(4, this->latitude_deg(), target);
  }

  if (_internal_metadata_.have_unknown_fields()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        _internal_metadata_.unknown_fields(), target);
  }
  // @@protoc_insertion_point(serialize_to_array_end:ds_sim.msgs.PressureDepth)
  return target;
}

size_t PressureDepth::RequiredFieldsByteSizeFallback() const {
// @@protoc_insertion_point(required_fields_byte_size_fallback_start:ds_sim.msgs.PressureDepth)
  size_t total_size = 0;

  if (has_stamp()) {
    // required .gazebo.msgs.Time stamp = 1;
    total_size += 1 +
      ::google::protobuf::internal::WireFormatLite::MessageSize(
        *stamp_);
  }

  if (has_depth()) {
    // required double depth = 2;
    total_size += 1 + 8;
  }

  if (has_pressure_dbar()) {
    // required double pressure_dbar = 3;
    total_size += 1 + 8;
  }

  if (has_latitude_deg()) {
    // required double latitude_deg = 4;
    total_size += 1 + 8;
  }

  return total_size;
}
size_t PressureDepth::ByteSizeLong() const {
// @@protoc_insertion_point(message_byte_size_start:ds_sim.msgs.PressureDepth)
  size_t total_size = 0;

  if (_internal_metadata_.have_unknown_fields()) {
    total_size +=
      ::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(
        _internal_metadata_.unknown_fields());
  }
  if (((_has_bits_[0] & 0x0000000f) ^ 0x0000000f) == 0) {  // All required fields are present.
    // required .gazebo.msgs.Time stamp = 1;
    total_size += 1 +
      ::google::protobuf::internal::WireFormatLite::MessageSize(
        *stamp_);

    // required double depth = 2;
    total_size += 1 + 8;

    // required double pressure_dbar = 3;
    total_size += 1 + 8;

    // required double latitude_deg = 4;
    total_size += 1 + 8;

  } else {
    total_size += RequiredFieldsByteSizeFallback();
  }
  int cached_size = ::google::protobuf::internal::ToCachedSize(total_size);
  SetCachedSize(cached_size);
  return total_size;
}

void PressureDepth::MergeFrom(const ::google::protobuf::Message& from) {
// @@protoc_insertion_point(generalized_merge_from_start:ds_sim.msgs.PressureDepth)
  GOOGLE_DCHECK_NE(&from, this);
  const PressureDepth* source =
      ::google::protobuf::internal::DynamicCastToGenerated<const PressureDepth>(
          &from);
  if (source == NULL) {
  // @@protoc_insertion_point(generalized_merge_from_cast_fail:ds_sim.msgs.PressureDepth)
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
  // @@protoc_insertion_point(generalized_merge_from_cast_success:ds_sim.msgs.PressureDepth)
    MergeFrom(*source);
  }
}

void PressureDepth::MergeFrom(const PressureDepth& from) {
// @@protoc_insertion_point(class_specific_merge_from_start:ds_sim.msgs.PressureDepth)
  GOOGLE_DCHECK_NE(&from, this);
  _internal_metadata_.MergeFrom(from._internal_metadata_);
  ::google::protobuf::uint32 cached_has_bits = 0;
  (void) cached_has_bits;

  cached_has_bits = from._has_bits_[0];
  if (cached_has_bits & 15u) {
    if (cached_has_bits & 0x00000001u) {
      mutable_stamp()->::gazebo::msgs::Time::MergeFrom(from.stamp());
    }
    if (cached_has_bits & 0x00000002u) {
      depth_ = from.depth_;
    }
    if (cached_has_bits & 0x00000004u) {
      pressure_dbar_ = from.pressure_dbar_;
    }
    if (cached_has_bits & 0x00000008u) {
      latitude_deg_ = from.latitude_deg_;
    }
    _has_bits_[0] |= cached_has_bits;
  }
}

void PressureDepth::CopyFrom(const ::google::protobuf::Message& from) {
// @@protoc_insertion_point(generalized_copy_from_start:ds_sim.msgs.PressureDepth)
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void PressureDepth::CopyFrom(const PressureDepth& from) {
// @@protoc_insertion_point(class_specific_copy_from_start:ds_sim.msgs.PressureDepth)
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool PressureDepth::IsInitialized() const {
  if ((_has_bits_[0] & 0x0000000f) != 0x0000000f) return false;
  if (has_stamp()) {
    if (!this->stamp_->IsInitialized()) return false;
  }
  return true;
}

void PressureDepth::Swap(PressureDepth* other) {
  if (other == this) return;
  InternalSwap(other);
}
void PressureDepth::InternalSwap(PressureDepth* other) {
  using std::swap;
  swap(stamp_, other->stamp_);
  swap(depth_, other->depth_);
  swap(pressure_dbar_, other->pressure_dbar_);
  swap(latitude_deg_, other->latitude_deg_);
  swap(_has_bits_[0], other->_has_bits_[0]);
  _internal_metadata_.Swap(&other->_internal_metadata_);
}

::google::protobuf::Metadata PressureDepth::GetMetadata() const {
  protobuf_SensorDepth_2eproto::protobuf_AssignDescriptorsOnce();
  return ::protobuf_SensorDepth_2eproto::file_level_metadata[kIndexInFileMessages];
}


// @@protoc_insertion_point(namespace_scope)
}  // namespace msgs
}  // namespace ds_sim
namespace google {
namespace protobuf {
template<> GOOGLE_PROTOBUF_ATTRIBUTE_NOINLINE ::ds_sim::msgs::PressureDepth* Arena::CreateMaybeMessage< ::ds_sim::msgs::PressureDepth >(Arena* arena) {
  return Arena::CreateInternal< ::ds_sim::msgs::PressureDepth >(arena);
}
}  // namespace protobuf
}  // namespace google

// @@protoc_insertion_point(global_scope)

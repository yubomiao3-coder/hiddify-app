import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_vpn/singbox/model/singbox_proxy_type.dart';

part 'proxy_entity.freezed.dart';

@freezed
class ProxyGroupEntity with _$ProxyGroupEntity {
  const ProxyGroupEntity._();

  const factory ProxyGroupEntity({
    required String tag,
    required String type,
    required String selected,
    @Default([]) List<ProxyItemEntity> items,
  }) = _ProxyGroupEntity;

  String get name => _sanitizedTag(tag);
}

@freezed
class ProxyItemEntity with _$ProxyItemEntity {
  const ProxyItemEntity._();

  const factory ProxyItemEntity({
    required String tag,
    required String type,
    required int urlTestDelay,
    String? selectedTag,
  }) = _ProxyItemEntity;

  String get name => _sanitizedTag(tag);
  String? get selectedName => selectedTag == null ? null : _sanitizedTag(selectedTag!);
  bool get isVisible => !tag.contains("搂hide搂");
}

String _sanitizedTag(String tag) => tag.replaceFirst(RegExp(r"\搂[^]*"), "").trimRight();
// bool get isVisible => !tag.contains("搂hide搂");

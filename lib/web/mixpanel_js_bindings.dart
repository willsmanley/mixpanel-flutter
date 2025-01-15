import 'dart:js_interop';

@JS('mixpanel')
@staticInterop
external Mixpanel get mixpanel;

@JS()
@staticInterop
class Mixpanel {}

extension MixpanelExtension on Mixpanel {
  external void init(String token, JSAny? config);
  external void set_config(JSAny config);
  external bool has_opted_out_tracking();
  external void opt_in_tracking();
  external void opt_out_tracking();
  external void identify(String distinctId);
  external void alias(String alias, String distinctId);
  external void track(String name, JSAny? properties);
  external void track_with_groups(
      String eventName, JSAny properties, JSAny groups);
  external void set_group(String groupKey, JSAny groupIds);
  external void add_group(String groupKey, JSAny groupId);
  external void remove_group(String groupKey, JSAny groupId);
  external MixpanelGroup get_group(String groupKey, JSAny groupId);
  external void register(JSAny properties);
  external void register_once(JSAny properties);
  external void unregister(String property);
  external void time_event(String eventName);
  external void reset();
  external String get_distinct_id();
  external void people_set(JSAny properties);
  external void people_set_once(JSAny properties);
  external void people_increment(JSAny properties);
  external void people_append(JSAny properties);
  external void people_union(JSAny properties);
  external void people_remove(JSAny properties);
  external void people_unset(JSAny properties);
  external void people_track_charge(double amount, JSAny? properties);
  external void people_clear_charge();
  external void people_delete_users();
}

@JS()
@staticInterop
class MixpanelGroup {}

extension MixpanelGroupExtension on MixpanelGroup {
  @JS('group.set')
  external void set(JSAny properties);

  @JS('group.set_once')
  external void set_once(String prop, JSAny to);

  @JS('group.unset')
  external void unset(String prop);

  @JS('group.remove')
  external void remove(String name, JSAny value);

  @JS('group.union')
  external void union(String name, JSArray values);
}

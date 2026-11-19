package com.google.android.gms.internal.measurement;

import com.linkplay.network.SecurityConstants;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.networkbench.agent.impl.performance.coulometry.b.j;
import com.sightcall.livetranslation.data.LiveTranslationEntity;

/* JADX INFO: loaded from: classes2.dex */
public final class zzagu implements zzagt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzpo f30487a = new zzpo(zzagr.d, 81);

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long A0() {
        return ((Long) f30487a.b(55, "measurement.rb.attribution.client.min_time_after_boot_seconds", 90L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long B0() {
        return ((Long) f30487a.b(43, "measurement.sgtm.batch.retry_max_wait", 21600000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long C0() {
        return ((Long) f30487a.b(71, "measurement.upload.max_events_per_day", 100000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String D0() {
        return (String) f30487a.c(44, "measurement.sgtm.service_upload_apps_list", "").get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long E0() {
        return ((Long) f30487a.b(72, "measurement.upload.max_public_events_per_day", 50000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long F0() {
        return ((Long) f30487a.b(69, "measurement.upload.max_error_events_per_day", 1000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long G0() {
        return ((Long) f30487a.b(41, "measurement.sgtm.batch.retry_interval", 1800000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long H0() {
        return ((Long) f30487a.b(15, "measurement.upload.google_signal_max_queue_time", 605000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long I() {
        return ((Long) f30487a.b(5, "measurement.config.cache_time", 86400000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long I0() {
        return ((Long) f30487a.b(42, "measurement.sgtm.batch.retry_max_count", 10L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long J() {
        return ((Long) f30487a.b(12, "measurement.session.engagement_interval", 3600000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long J0() {
        return ((Long) f30487a.b(70, "measurement.upload.max_events_per_bundle", 1000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String K() {
        return (String) f30487a.c(8, "measurement.config.url_scheme", SecurityConstants.SECURITY_HTTPS).get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String K0() {
        return (String) f30487a.c(58, "measurement.rb.attribution.uri_path", "privacy-sandbox/register-app-conversion").get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String L() {
        return (String) f30487a.c(13, "measurement.rb.attribution.event_params", "value|currency").get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long L0() {
        return ((Long) f30487a.b(75, "measurement.upload.max_batch_size", 65536L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final boolean M() {
        return ((Boolean) f30487a.a(10, "measurement.config.default_flag_values", true).get()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long M0() {
        return ((Long) f30487a.b(28, "measurement.upload.minimum_delay", 500L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long N() {
        return ((Long) f30487a.b(17, "measurement.lifetimevalue.max_currency_tracked", 4L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long N0() {
        return ((Long) f30487a.b(48, "measurement.sgtm.upload.min_delay_after_background", j.f37873a).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long O() {
        return ((Long) f30487a.b(18, "measurement.dma_consent.max_daily_dcu_realtime_events", 1L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String O0() {
        return (String) f30487a.c(59, "measurement.rb.attribution.query_parameters_to_remove", "").get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String P() {
        return (String) f30487a.c(14, "measurement.edpb.events_cached_in_no_data_mode", "_f,_v,_cmp").get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long P0() {
        return ((Long) f30487a.b(49, "measurement.sgtm.upload.min_delay_after_broadcast", 1000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long Q() {
        return ((Long) f30487a.b(20, "measurement.store.max_stored_events_per_app", 100000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long Q0() {
        return ((Long) f30487a.b(29, "measurement.monitoring.sample_period_millis", 86400000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String R() {
        return (String) f30487a.c(32, "measurement.rb.attribution.app_allowlist", "").get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String R0() {
        return (String) f30487a.c(45, "measurement.sgtm.upload.backoff_http_codes", "404,429,503,504").get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long S() {
        return ((Long) f30487a.b(52, "measurement.sgtm.upload.retry_max_wait", 21600000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String S0() {
        return (String) f30487a.c(56, "measurement.rb.attribution.uri_authority", "google-analytics.com").get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long T() {
        return ((Long) f30487a.b(25, "measurement.rb.attribution.max_trigger_uris_queried_at_once", 0L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long T0() {
        return ((Long) f30487a.b(73, "measurement.upload.max_queue_time", 518400000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long U() {
        return ((Long) f30487a.b(62, "measurement.redaction.app_instance_id.ttl", 7200000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long U0() {
        return ((Long) f30487a.b(46, "measurement.sgtm.upload.batches_retrieval_limit", 5L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long V() {
        return ((Long) f30487a.b(79, "measurement.upload.window_interval", 3600000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long V0() {
        return ((Long) f30487a.b(57, "measurement.rb.attribution.max_queue_time", 864000000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long W() {
        return ((Long) f30487a.b(26, "measurement.rb.attribution.client.min_ad_services_version", 7L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long W0() {
        return ((Long) f30487a.b(74, "measurement.upload.max_realtime_events_per_day", 10L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long X() {
        return ((Long) f30487a.b(33, "measurement.upload.realtime_upload_interval", 10000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long X0() {
        return ((Long) f30487a.b(47, "measurement.sgtm.upload.max_queued_batches", LiveTranslationEntity.DefaultSentenceTimeOut).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long Y() {
        return ((Long) f30487a.b(53, "measurement.upload.stale_data_deletion_interval", 86400000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long Y0() {
        return ((Long) f30487a.b(27, "measurement.alarm_manager.minimum_interval", 60000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long Z() {
        return ((Long) f30487a.b(63, "measurement.upload.backoff_period", 43200000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long a() {
        return ((Long) f30487a.b(11, "45769094", 3600000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String a0() {
        return (String) f30487a.c(80, "measurement.rb.attribution.user_properties", "_npa,npa|_fot,fot").get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String b() {
        return (String) f30487a.c(7, "measurement.config.url_authority", "app-measurement.com").get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long b0() {
        return ((Long) f30487a.b(23, "measurement.upload.max_item_scoped_custom_parameters", 27L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long c() {
        return ((Long) f30487a.b(9, "measurement.upload.debug_upload_interval", 1000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String c0() {
        return (String) f30487a.c(60, "measurement.rb.attribution.uri_scheme", SecurityConstants.SECURITY_HTTPS).get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String d() {
        return (String) f30487a.c(16, "measurement.sgtm.google_signal.url", "https://app-measurement.com/s/d").get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long d0() {
        return ((Long) f30487a.b(0, "measurement.ad_id_cache_time", 10000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long e0() {
        return ((Long) f30487a.b(1, "measurement.app_uninstalled_additional_ad_id_cache_time", 3600000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final boolean f0() {
        return ((Boolean) f30487a.a(2, "measurement.config.bundle_for_all_apps_on_backgrounded", true).get()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long g0() {
        return ((Long) f30487a.b(3, "measurement.max_bundles_per_iteration", 100L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String h0() {
        return (String) f30487a.c(4, "measurement.gbraid_campaign.campaign_params_triggering_info_update", "gclid,gbraid,gad_campaignid").get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long i0() {
        return ((Long) f30487a.b(30, "measurement.rb.attribution.notify_app_delay_millis", HarvestConfiguration.SLOW_USER_ACTION_THRESHOLD).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long j() {
        return ((Long) f30487a.b(19, "measurement.upload.max_event_parameter_value_length", 500L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long j0() {
        return ((Long) f30487a.b(50, "measurement.sgtm.upload.min_delay_after_startup", LiveTranslationEntity.DefaultSentenceTimeOut).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final boolean k0() {
        return ((Boolean) f30487a.a(31, "measurement.config.notify_trigger_uris_on_backgrounded", true).get()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long l0() {
        return ((Long) f30487a.b(51, "measurement.sgtm.upload.retry_interval", j.f37873a).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long m0() {
        return ((Long) f30487a.b(24, "measurement.rb.max_trigger_registrations_per_day", 1000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long n0() {
        return ((Long) f30487a.b(61, "measurement.sdk.attribution.cache.ttl", 604800000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long o0() {
        return ((Long) f30487a.b(21, "measurement.experiment.max_ids", 50L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long p0() {
        return ((Long) f30487a.b(22, "measurement.audience.filter_result_max_count", 200L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long q0() {
        return ((Long) f30487a.b(67, "measurement.upload.max_bundles", 100L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long r() {
        return ((Long) f30487a.b(77, "measurement.upload.retry_time", 1800000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long r0() {
        return ((Long) f30487a.b(38, "measurement.service_client.reconnect_millis", 1000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final String s() {
        return (String) f30487a.c(78, "measurement.upload.url", "https://app-measurement.com/a").get();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long s0() {
        return ((Long) f30487a.b(68, "measurement.upload.max_conversions_per_day", 10000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long t0() {
        return ((Long) f30487a.b(40, "measurement.sgtm.batch.long_queuing_threshold", 240000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long u() {
        return ((Long) f30487a.b(76, "measurement.upload.retry_count", 6L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long u0() {
        return ((Long) f30487a.b(65, "measurement.upload.interval", 3600000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long v0() {
        return ((Long) f30487a.b(34, "measurement.upload.refresh_blacklisted_config_interval", 604800000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long w0() {
        return ((Long) f30487a.b(54, "measurement.rb.attribution.max_retry_delay_seconds", 16L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long x0() {
        return ((Long) f30487a.b(64, "measurement.upload.initial_upload_delay_time", 15000L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long y0() {
        return ((Long) f30487a.b(66, "measurement.upload.max_bundle_size", 65536L).get()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagt
    public final long z0() {
        return ((Long) f30487a.b(36, "measurement.service_client.idle_disconnect_millis", LiveTranslationEntity.DefaultSentenceTimeOut).get()).longValue();
    }
}

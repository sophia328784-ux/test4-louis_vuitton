package com.google.android.gms.measurement.internal;

import com.linkplay.network.SecurityConstants;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.networkbench.agent.impl.performance.coulometry.b.j;
import com.networkbench.agent.impl.util.r;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import defpackage.pq0;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzfy {
    public static final zzfx A;
    public static final zzfx A0;
    public static final zzfx B;
    public static final zzfx B0;
    public static final zzfx C;
    public static final zzfx C0;
    public static final zzfx D;
    public static final zzfx D0;
    public static final zzfx E;
    public static final zzfx E0;
    public static final zzfx F;
    public static final zzfx F0;
    public static final zzfx G;
    public static final zzfx G0;
    public static final zzfx H;
    public static final zzfx H0;
    public static final zzfx I;
    public static final zzfx I0;
    public static final zzfx J;
    public static final zzfx J0;
    public static final zzfx K;
    public static final zzfx K0;
    public static final zzfx L;
    public static final zzfx L0;
    public static final zzfx M;
    public static final zzfx M0;
    public static final zzfx N;
    public static final zzfx N0;
    public static final zzfx O;
    public static final zzfx O0;
    public static final zzfx P;
    public static final zzfx P0;
    public static final zzfx Q;
    public static final zzfx Q0;
    public static final zzfx R;
    public static final zzfx R0;
    public static final zzfx S;
    public static final zzfx S0;
    public static final zzfx T;
    public static final zzfx T0;
    public static final zzfx U;
    public static final zzfx U0;
    public static final zzfx V;
    public static final zzfx V0;
    public static final zzfx W;
    public static final zzfx W0;
    public static final zzfx X;
    public static final zzfx X0;
    public static final zzfx Y;
    public static final zzfx Y0;
    public static final zzfx Z;
    public static final zzfx Z0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f31732a = pq0.v();
    public static final zzfx a0;
    public static final zzfx a1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzfx f31733b;
    public static final zzfx b0;
    public static final zzfx b1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzfx f31734c;
    public static final zzfx c0;
    public static final zzfx c1;
    public static final zzfx d;
    public static final zzfx d0;
    public static final zzfx d1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final zzfx f31735e;
    public static final zzfx e0;
    public static final zzfx e1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzfx f31736f;
    public static final zzfx f0;
    public static final zzfx f1;
    public static final zzfx g;
    public static final zzfx g0;
    public static final zzfx g1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final zzfx f31737h;
    public static final zzfx h0;
    public static final zzfx h1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final zzfx f31738i;
    public static final zzfx i0;
    public static final zzfx i1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final zzfx f31739j;
    public static final zzfx j0;
    public static final zzfx j1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final zzfx f31740k;
    public static final zzfx k0;
    public static final zzfx l;
    public static final zzfx l0;
    public static final zzfx m;
    public static final zzfx m0;
    public static final zzfx n;
    public static final zzfx n0;
    public static final zzfx o;
    public static final zzfx o0;
    public static final zzfx p;
    public static final zzfx p0;
    public static final zzfx q;
    public static final zzfx q0;
    public static final zzfx r;
    public static final zzfx r0;
    public static final zzfx s;
    public static final zzfx s0;
    public static final zzfx t;
    public static final zzfx t0;
    public static final zzfx u;
    public static final zzfx u0;
    public static final zzfx v;
    public static final zzfx v0;
    public static final zzfx w;
    public static final zzfx w0;
    public static final zzfx x;
    public static final zzfx x0;
    public static final zzfx y;
    public static final zzfx y0;
    public static final zzfx z;
    public static final zzfx z0;

    static {
        Collections.synchronizedSet(new HashSet());
        f31733b = a("measurement.ad_id_cache_time", 10000L, zzfq.f31720a, false);
        f31734c = a("measurement.app_uninstalled_additional_ad_id_cache_time", 3600000L, zzbp.f31612a, false);
        d = a("measurement.monitoring.sample_period_millis", 86400000L, zzcf.f31628a, false);
        f31735e = a("measurement.config.cache_time", 86400000L, zzcq.f31639a, false);
        f31736f = a("measurement.config.url_scheme", SecurityConstants.SECURITY_HTTPS, zzdb.f31652a, false);
        g = a("measurement.config.url_authority", "app-measurement.com", zzdm.f31663a, false);
        f31737h = a("measurement.upload.max_bundles", 100, zzdx.f31674a, false);
        f31738i = a("measurement.upload.max_batch_size", 65536, zzei.f31686a, false);
        f31739j = a("measurement.upload.max_bundle_size", 65536, zzet.f31697a, false);
        f31740k = a("measurement.upload.max_events_per_bundle", 1000, zzfe.f31708a, false);
        l = a("measurement.upload.max_events_per_day", 100000, zzfp.f31719a, false);
        m = a("measurement.upload.max_error_events_per_day", 1000, zzbv.f31618a, false);
        n = a("measurement.upload.max_public_events_per_day", 50000, zzbw.f31619a, false);
        o = a("measurement.upload.max_conversions_per_day", 10000, zzbx.f31620a, false);
        p = a("measurement.upload.max_realtime_events_per_day", 10, zzby.f31621a, false);
        q = a("measurement.store.max_stored_events_per_app", 100000, zzbz.f31622a, false);
        r = a("measurement.upload.url", "https://app-measurement.com/a", zzca.f31623a, false);
        s = a("measurement.sgtm.google_signal.url", "https://app-measurement.com/s/d", zzcb.f31624a, false);
        t = a("measurement.sgtm.service_upload_apps_list", "", zzcc.f31625a, false);
        u = a("measurement.sgtm.upload.backoff_http_codes", "404,429,503,504", zzcd.f31626a, false);
        Long lValueOf = Long.valueOf(j.f37873a);
        v = a("measurement.sgtm.upload.retry_interval", lValueOf, zzce.f31627a, false);
        w = a("measurement.sgtm.upload.retry_max_wait", 21600000L, zzcg.f31629a, false);
        x = a("measurement.sgtm.batch.retry_interval", 1800000L, zzch.f31630a, false);
        y = a("measurement.sgtm.batch.retry_max_wait", 21600000L, zzci.f31631a, false);
        z = a("measurement.sgtm.batch.retry_max_count", 10, zzcj.f31632a, false);
        A = a("measurement.sgtm.upload.max_queued_batches", 5000, zzck.f31633a, false);
        B = a("measurement.sgtm.upload.batches_retrieval_limit", 5, zzcl.f31634a, false);
        Long lValueOf2 = Long.valueOf(LiveTranslationEntity.DefaultSentenceTimeOut);
        C = a("measurement.sgtm.upload.min_delay_after_startup", lValueOf2, zzcm.f31635a, false);
        D = a("measurement.sgtm.upload.min_delay_after_broadcast", 1000L, zzcn.f31636a, false);
        E = a("measurement.sgtm.upload.min_delay_after_background", lValueOf, zzco.f31637a, false);
        F = a("measurement.sgtm.batch.long_queuing_threshold", 14400000L, zzcp.f31638a, false);
        G = a("measurement.upload.backoff_period", 43200000L, zzcr.f31640a, false);
        a("measurement.upload.window_interval", 3600000L, zzcs.f31641a, false);
        H = a("measurement.upload.interval", 3600000L, zzct.f31642a, false);
        I = a("measurement.upload.realtime_upload_interval", 10000L, zzcu.f31643a, false);
        J = a("measurement.upload.debug_upload_interval", 1000L, zzcv.f31644a, false);
        K = a("measurement.upload.minimum_delay", 500L, zzcw.f31645a, false);
        L = a("measurement.alarm_manager.minimum_interval", 60000L, zzcx.f31646a, false);
        M = a("measurement.upload.stale_data_deletion_interval", 86400000L, zzcy.f31647a, false);
        N = a("measurement.upload.refresh_blacklisted_config_interval", 604800000L, zzcz.f31648a, false);
        O = a("measurement.upload.initial_upload_delay_time", 15000L, zzda.f31651a, false);
        P = a("measurement.upload.retry_time", 1800000L, zzdc.f31653a, false);
        Q = a("measurement.upload.retry_count", 6, zzdd.f31654a, false);
        R = a("measurement.upload.max_queue_time", 518400000L, zzde.f31655a, false);
        S = a("measurement.upload.google_signal_max_queue_time", 300000L, zzdf.f31656a, false);
        T = a("measurement.lifetimevalue.max_currency_tracked", 4, zzdg.f31657a, false);
        U = a("measurement.audience.filter_result_max_count", 200, zzdh.f31658a, false);
        V = a("measurement.upload.max_public_user_properties", 100, null, false);
        W = a("measurement.upload.max_event_name_cardinality", Integer.valueOf(r.E), null, false);
        X = a("measurement.upload.max_public_event_params", 100, null, false);
        Y = a("measurement.service_client.idle_disconnect_millis", lValueOf2, zzdi.f31659a, false);
        Z = a("measurement.service_client.reconnect_millis", 1000L, zzdj.f31660a, false);
        Boolean bool = Boolean.FALSE;
        a0 = a("measurement.test.test_boolean_flag", bool, zzdk.f31661a, false);
        b0 = a("measurement.test.test_string_flag", "---", zzdl.f31662a, false);
        c0 = a("measurement.test.test_long_flag", -1L, zzdn.f31664a, false);
        a("measurement.test.test_cached_long_flag", -1L, zzdo.f31665a, true);
        d0 = a("measurement.test.test_int_flag", -2, zzdp.f31666a, false);
        e0 = a("measurement.test.test_double_flag", Double.valueOf(-3.0d), zzdq.f31667a, false);
        a("measurement.experiment.max_ids", 50, zzdr.f31668a, false);
        f0 = a("measurement.upload.max_item_scoped_custom_parameters", 27, zzds.f31669a, false);
        g0 = a("measurement.upload.max_event_parameter_value_length", 500, zzdt.f31670a, true);
        h0 = a("measurement.max_bundles_per_iteration", 100, zzdu.f31671a, false);
        i0 = a("measurement.sdk.attribution.cache.ttl", 604800000L, zzdv.f31672a, false);
        j0 = a("measurement.redaction.app_instance_id.ttl", 7200000L, zzdw.f31673a, false);
        k0 = a("measurement.rb.attribution.client.min_ad_services_version", 7, zzdy.f31675a, false);
        l0 = a("measurement.dma_consent.max_daily_dcu_realtime_events", 1, zzdz.f31676a, false);
        m0 = a("measurement.rb.attribution.uri_scheme", SecurityConstants.SECURITY_HTTPS, zzea.f31678a, false);
        n0 = a("measurement.rb.attribution.uri_authority", "google-analytics.com", zzeb.f31679a, false);
        o0 = a("measurement.rb.attribution.uri_path", "privacy-sandbox/register-app-conversion", zzec.f31680a, false);
        p0 = a("measurement.session.engagement_interval", 3600000L, zzed.f31681a, false);
        q0 = a("measurement.rb.attribution.app_allowlist", "", zzee.f31682a, false);
        r0 = a("measurement.rb.attribution.user_properties", "_npa,npa|_fot,fot", zzef.f31683a, false);
        s0 = a("measurement.rb.attribution.event_params", "value|currency", zzeg.f31684a, false);
        t0 = a("measurement.rb.attribution.query_parameters_to_remove", "", zzeh.f31685a, false);
        u0 = a("measurement.rb.attribution.max_queue_time", 864000000L, zzej.f31687a, false);
        v0 = a("measurement.rb.attribution.max_retry_delay_seconds", 16, zzek.f31688a, false);
        w0 = a("measurement.rb.attribution.client.min_time_after_boot_seconds", 90, zzel.f31689a, false);
        a("measurement.rb.attribution.max_trigger_uris_queried_at_once", 0, zzem.f31690a, false);
        x0 = a("measurement.rb.max_trigger_registrations_per_day", 1000, zzen.f31691a, false);
        Boolean bool2 = Boolean.TRUE;
        y0 = a("measurement.config.bundle_for_all_apps_on_backgrounded", bool2, zzeo.f31692a, false);
        z0 = a("measurement.config.notify_trigger_uris_on_backgrounded", bool2, zzep.f31693a, false);
        A0 = a("measurement.rb.attribution.notify_app_delay_millis", Integer.valueOf(HarvestConfiguration.SLOW_START_THRESHOLD), zzeq.f31694a, false);
        a("measurement.config.default_flag_values", bool2, zzer.f31695a, false);
        B0 = a("measurement.upload.diagnostic_upload_interval", 3600000L, zzes.f31696a, false);
        C0 = a("measurement.quality.checksum", bool, null, false);
        D0 = a("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", bool, zzeu.f31698a, false);
        E0 = a("measurement.audience.refresh_event_count_filters_timestamp", bool, zzev.f31699a, false);
        F0 = a("measurement.audience.use_bundle_timestamp_for_event_count_filters", bool, zzew.f31700a, true);
        G0 = a("measurement.sdk.collection.last_deep_link_referrer_campaign2", bool, zzex.f31701a, false);
        H0 = a("measurement.integration.disable_firebase_instance_id", bool, zzey.f31702a, false);
        I0 = a("measurement.collection.service.update_with_analytics_fix", bool, zzez.f31703a, false);
        J0 = a("measurement.service.storage_consent_support_version", 203600, zzfa.f31704a, false);
        K0 = a("measurement.service.store_null_safelist", bool2, zzfb.f31705a, false);
        L0 = a("measurement.service.store_safelist", bool2, zzfc.f31706a, false);
        M0 = a("measurement.session_stitching_token_enabled", bool, zzfd.f31707a, false);
        N0 = a("measurement.sgtm.client.upload_on_backgrounded.dev", bool, zzff.f31709a, true);
        O0 = a("measurement.rb.attribution.service", bool2, zzfg.f31710a, true);
        P0 = a("measurement.rb.attribution.client2", bool2, zzfh.f31711a, true);
        Q0 = a("measurement.rb.attribution.uuid_generation", bool2, zzfi.f31712a, false);
        R0 = a("measurement.rb.attribution.enable_trigger_redaction", bool2, zzfj.f31713a, false);
        S0 = a("measurement.client.sessions.enable_fix_background_engagement", bool2, zzfw.f31726a, false);
        a("measurement.rb.attribution.service.enable_max_trigger_uris_queried_at_once", bool2, zzfk.f31714a, false);
        a("measurement.remove_conflicting_first_party_apis.dev", bool, zzfl.f31715a, false);
        T0 = a("measurement.rb.attribution.service.trigger_uris_high_priority", bool2, zzfm.f31716a, false);
        U0 = a("measurement.experiment.enable_phenotype_experiment_reporting", bool2, zzfn.f31717a, false);
        V0 = a("measurement.experiment.enable_passthrough_experiment_reporting", bool2, zzfo.f31718a, false);
        W0 = a("measurement.set_default_event_parameters.fix_service_request_ordering", bool, zzbk.f31608a, false);
        X0 = a("measurement.set_default_event_parameters.fix_app_update_logging", bool2, zzbj.f31607a, false);
        Y0 = a("measurement.service.fix_stop_bundling_bug", bool2, zzbn.f31611a, false);
        Z0 = a("measurement.gbraid_campaign.stop_lgclid", bool, zzft.f31723a, false);
        a1 = a("measurement.gbraid_campaign.deep_link_url", bool, zzfs.f31722a, false);
        b1 = a("measurement.gbraid_compaign.compaign_params_triggering_info_update", "gclid,gbraid,gad_campaignid", zzbq.f31613a, false);
        c1 = a("measurement.edpb.service", bool, zzbm.f31610a, false);
        d1 = a("measurement.edpb.events_cached_in_no_data_mode", "_f,_v,_cmp", zzbr.f31614a, false);
        e1 = a("measurement.robust_time_source_2", bool, zzfv.f31725a, false);
        f1 = a("measurement.manual_iap_logging.client_service", bool, zzfu.f31724a, false);
        g1 = a("measurement.dsid_consent_only.app_allowlist1", "", zzbs.f31615a, false);
        h1 = a("measurement.dsid_consent_only.app_allowlist2", "", zzbt.f31616a, false);
        i1 = a("measurement.dsid_consent_only.app_allowlist3", "", zzbu.f31617a, false);
        j1 = a("measurement.diagnostics.enabled", bool, zzbl.f31609a, false);
    }

    public static zzfx a(String str, Object obj, zzbo zzboVar, boolean z2) {
        zzfx zzfxVar = new zzfx(str, obj, zzboVar);
        if (z2) {
            f31732a.add(zzfxVar);
        }
        return zzfxVar;
    }
}

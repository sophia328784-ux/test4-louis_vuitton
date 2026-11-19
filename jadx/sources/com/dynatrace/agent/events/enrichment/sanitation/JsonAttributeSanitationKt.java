package com.dynatrace.agent.events.enrichment.sanitation;

import defpackage.d20;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"com.dynatrace.agent_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class JsonAttributeSanitationKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Regex f26788a = new Regex("^[a-zA-Z0-9]+(?:\\.[a-zA-Z][a-zA-Z0-9]*|_[a-zA-Z0-9]+)*$");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final List f26789b = CollectionsKt.O("duration");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final List f26790c = CollectionsKt.P("url.full", "exception.stack_trace");
    public static final List d = CollectionsKt.O("exception.stack_trace");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final d20 f26791e = new d20(12);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final d20 f26792f = new d20(13);
    public static final d20 g = new d20(14);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final d20 f26793h = new d20(15);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final d20 f26794i = new d20(16);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final d20 f26795j = new d20(17);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final d20 f26796k = new d20(18);
}

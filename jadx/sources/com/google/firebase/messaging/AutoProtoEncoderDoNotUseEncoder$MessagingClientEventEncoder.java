package com.google.firebase.messaging;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.proto.AtProtobuf;
import com.google.firebase.messaging.reporting.MessagingClientEvent;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
final class AutoProtoEncoderDoNotUseEncoder$MessagingClientEventEncoder implements ObjectEncoder<MessagingClientEvent> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AutoProtoEncoderDoNotUseEncoder$MessagingClientEventEncoder f35216a = new AutoProtoEncoderDoNotUseEncoder$MessagingClientEventEncoder();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FieldDescriptor f35217b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f35218c;
    public static final FieldDescriptor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final FieldDescriptor f35219e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final FieldDescriptor f35220f;
    public static final FieldDescriptor g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final FieldDescriptor f35221h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final FieldDescriptor f35222i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final FieldDescriptor f35223j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final FieldDescriptor f35224k;
    public static final FieldDescriptor l;
    public static final FieldDescriptor m;
    public static final FieldDescriptor n;
    public static final FieldDescriptor o;
    public static final FieldDescriptor p;

    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("projectNumber");
        AtProtobuf atProtobuf = new AtProtobuf();
        atProtobuf.f35106a = 1;
        f35217b = defpackage.a.g(atProtobuf, builder);
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("messageId");
        AtProtobuf atProtobuf2 = new AtProtobuf();
        atProtobuf2.f35106a = 2;
        f35218c = defpackage.a.g(atProtobuf2, builder2);
        FieldDescriptor.Builder builder3 = new FieldDescriptor.Builder("instanceId");
        AtProtobuf atProtobuf3 = new AtProtobuf();
        atProtobuf3.f35106a = 3;
        d = defpackage.a.g(atProtobuf3, builder3);
        FieldDescriptor.Builder builder4 = new FieldDescriptor.Builder("messageType");
        AtProtobuf atProtobuf4 = new AtProtobuf();
        atProtobuf4.f35106a = 4;
        f35219e = defpackage.a.g(atProtobuf4, builder4);
        FieldDescriptor.Builder builder5 = new FieldDescriptor.Builder("sdkPlatform");
        AtProtobuf atProtobuf5 = new AtProtobuf();
        atProtobuf5.f35106a = 5;
        f35220f = defpackage.a.g(atProtobuf5, builder5);
        FieldDescriptor.Builder builder6 = new FieldDescriptor.Builder("packageName");
        AtProtobuf atProtobuf6 = new AtProtobuf();
        atProtobuf6.f35106a = 6;
        g = defpackage.a.g(atProtobuf6, builder6);
        FieldDescriptor.Builder builder7 = new FieldDescriptor.Builder("collapseKey");
        AtProtobuf atProtobuf7 = new AtProtobuf();
        atProtobuf7.f35106a = 7;
        f35221h = defpackage.a.g(atProtobuf7, builder7);
        FieldDescriptor.Builder builder8 = new FieldDescriptor.Builder("priority");
        AtProtobuf atProtobuf8 = new AtProtobuf();
        atProtobuf8.f35106a = 8;
        f35222i = defpackage.a.g(atProtobuf8, builder8);
        FieldDescriptor.Builder builder9 = new FieldDescriptor.Builder("ttl");
        AtProtobuf atProtobuf9 = new AtProtobuf();
        atProtobuf9.f35106a = 9;
        f35223j = defpackage.a.g(atProtobuf9, builder9);
        FieldDescriptor.Builder builder10 = new FieldDescriptor.Builder("topic");
        AtProtobuf atProtobuf10 = new AtProtobuf();
        atProtobuf10.f35106a = 10;
        f35224k = defpackage.a.g(atProtobuf10, builder10);
        FieldDescriptor.Builder builder11 = new FieldDescriptor.Builder("bulkId");
        AtProtobuf atProtobuf11 = new AtProtobuf();
        atProtobuf11.f35106a = 11;
        l = defpackage.a.g(atProtobuf11, builder11);
        FieldDescriptor.Builder builder12 = new FieldDescriptor.Builder(MvelScriptManager.VAR_EVENT);
        AtProtobuf atProtobuf12 = new AtProtobuf();
        atProtobuf12.f35106a = 12;
        m = defpackage.a.g(atProtobuf12, builder12);
        FieldDescriptor.Builder builder13 = new FieldDescriptor.Builder("analyticsLabel");
        AtProtobuf atProtobuf13 = new AtProtobuf();
        atProtobuf13.f35106a = 13;
        n = defpackage.a.g(atProtobuf13, builder13);
        FieldDescriptor.Builder builder14 = new FieldDescriptor.Builder("campaignId");
        AtProtobuf atProtobuf14 = new AtProtobuf();
        atProtobuf14.f35106a = 14;
        o = defpackage.a.g(atProtobuf14, builder14);
        FieldDescriptor.Builder builder15 = new FieldDescriptor.Builder("composerLabel");
        AtProtobuf atProtobuf15 = new AtProtobuf();
        atProtobuf15.f35106a = 15;
        p = defpackage.a.g(atProtobuf15, builder15);
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        MessagingClientEvent messagingClientEvent = (MessagingClientEvent) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.b(f35217b, messagingClientEvent.f35339a);
        objectEncoderContext.e(f35218c, messagingClientEvent.f35340b);
        objectEncoderContext.e(d, messagingClientEvent.f35341c);
        objectEncoderContext.e(f35219e, messagingClientEvent.d);
        objectEncoderContext.e(f35220f, messagingClientEvent.f35342e);
        objectEncoderContext.e(g, messagingClientEvent.f35343f);
        objectEncoderContext.e(f35221h, messagingClientEvent.g);
        objectEncoderContext.c(f35222i, messagingClientEvent.f35344h);
        objectEncoderContext.c(f35223j, messagingClientEvent.f35345i);
        objectEncoderContext.e(f35224k, messagingClientEvent.f35346j);
        objectEncoderContext.b(l, 0L);
        objectEncoderContext.e(m, messagingClientEvent.f35347k);
        objectEncoderContext.e(n, messagingClientEvent.l);
        objectEncoderContext.b(o, 0L);
        objectEncoderContext.e(p, messagingClientEvent.m);
    }
}

package com.squareup.wire;

import defpackage.fc;
import defpackage.md;
import defpackage.mt;
import java.time.Duration;
import java.time.Instant;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import okio.Buffer;
import okio.ByteString;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0002\u0019\u001aBG\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00018\u0000\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\r\u0010\u000eB\u001d\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u000f¢\u0006\u0004\b\r\u0010\u0010B'\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u000f\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\r\u0010\u0011B/\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u000f\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u0012B9\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u000f\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\r\u0010\u0013B\u001f\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0005¢\u0006\u0004\b\r\u0010\u0014B)\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\r\u0010\u0015B1\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u0016B;\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\r\u0010\u0017BC\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u000f\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00018\u0000\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\r\u0010\u0018¨\u0006\u001b"}, d2 = {"Lcom/squareup/wire/ProtoAdapter;", "E", "", "Lcom/squareup/wire/FieldEncoding;", "fieldEncoding", "Lkotlin/reflect/KClass;", "type", "", "typeUrl", "Lcom/squareup/wire/Syntax;", "syntax", "identity", "sourceFile", "<init>", "(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V", "Ljava/lang/Class;", "(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V", "(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;Ljava/lang/String;)V", "(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V", "(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;)V", "(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;)V", "(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;)V", "(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V", "(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;)V", "(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V", "EnumConstantNotFoundException", "Companion", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class ProtoAdapter<E> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Companion f43453f = new Companion(null);
    public static final ProtoAdapterKt$commonBool$1 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ProtoAdapterKt$commonInt32$1 f43454h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final ProtoAdapterKt$commonUint32$1 f43455i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final ProtoAdapterKt$commonFixed32$1 f43456j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final ProtoAdapterKt$commonInt64$1 f43457k;
    public static final ProtoAdapterKt$commonUint64$1 l;
    public static final ProtoAdapterKt$commonFixed64$1 m;
    public static final DoubleProtoAdapter n;
    public static final ProtoAdapterKt$commonBytes$1 o;
    public static final ProtoAdapterKt$commonString$1 p;
    public static final ProtoAdapterKt$commonStructMap$1 q;
    public static final ProtoAdapterKt$commonStructList$1 r;
    public static final ProtoAdapterKt$commonStructNull$1 s;
    public static final ProtoAdapterKt$commonStructValue$1 t;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FieldEncoding f43458a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KClass f43459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Syntax f43460c;
    public final Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RepeatedProtoAdapter f43461e;

    /* JADX INFO: loaded from: classes2.dex */
    @Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0015\n\u0002\b\t\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0016\n\u0002\b\t\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0001\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0001BR\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0005R\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0005R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0005R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0005R\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0005R\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0005R\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u0005R\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\b0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0005R\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0005R\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0005R\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0005R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0005R\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00120\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0005R\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00140\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0005R\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00120\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0005R\u001a\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00140\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u0005R\u001a\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00120\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u0005R\u001a\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00140\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u0005R\u001a\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00120\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u0005R\u001a\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00140\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u0005R\u001a\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001e0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\u0005R\u001a\u0010!\u001a\b\u0012\u0004\u0012\u00020 0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b!\u0010\u0005R\u001a\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b#\u0010\u0005R\u001a\u0010%\u001a\b\u0012\u0004\u0012\u00020$0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b%\u0010\u0005R\u001a\u0010'\u001a\b\u0012\u0004\u0012\u00020&0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b'\u0010\u0005R\u001a\u0010)\u001a\b\u0012\u0004\u0012\u00020(0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b)\u0010\u0005R\u001a\u0010+\u001a\b\u0012\u0004\u0012\u00020*0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b+\u0010\u0005R&\u0010-\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020(\u0012\u0002\b\u0003\u0018\u00010,0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b-\u0010\u0005R \u0010/\u001a\u000e\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010.0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b/\u0010\u0005R\u001c\u00101\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001000\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b1\u0010\u0005R\u001c\u00102\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b2\u0010\u0005R\u001c\u00103\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\"0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b3\u0010\u0005R\u001c\u00104\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b4\u0010\u0005R\u001c\u00105\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b5\u0010\u0005R\u001c\u00106\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b6\u0010\u0005R\u001c\u00107\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b7\u0010\u0005R\u001c\u00108\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b8\u0010\u0005R\u001c\u00109\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b9\u0010\u0005R\u001c\u0010:\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010(0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b:\u0010\u0005R\u001c\u0010;\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010&0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b;\u0010\u0005R\u001e\u0010>\u001a\f\u0012\b\u0012\u00060<j\u0002`=0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b>\u0010\u0005R\u001e\u0010A\u001a\f\u0012\b\u0012\u00060?j\u0002`@0\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bA\u0010\u0005¨\u0006C"}, d2 = {"Lcom/squareup/wire/ProtoAdapter$Companion;", "", "Lcom/squareup/wire/ProtoAdapter;", "", "BOOL", "Lcom/squareup/wire/ProtoAdapter;", "", "INT32", "", "INT32_ARRAY", "UINT32", "UINT32_ARRAY", "SINT32", "SINT32_ARRAY", "FIXED32", "FIXED32_ARRAY", "SFIXED32", "SFIXED32_ARRAY", "", "INT64", "", "INT64_ARRAY", "UINT64", "UINT64_ARRAY", "SINT64", "SINT64_ARRAY", "FIXED64", "FIXED64_ARRAY", "SFIXED64", "SFIXED64_ARRAY", "", "FLOAT", "", "FLOAT_ARRAY", "", "DOUBLE", "", "DOUBLE_ARRAY", "Lokio/ByteString;", "BYTES", "", "STRING", "", "EMPTY", "", "STRUCT_MAP", "", "STRUCT_LIST", "", "STRUCT_NULL", "STRUCT_VALUE", "DOUBLE_VALUE", "FLOAT_VALUE", "INT64_VALUE", "UINT64_VALUE", "INT32_VALUE", "UINT32_VALUE", "BOOL_VALUE", "STRING_VALUE", "BYTES_VALUE", "Ljava/time/Duration;", "Lcom/squareup/wire/Duration;", "DURATION", "Ljava/time/Instant;", "Lcom/squareup/wire/Instant;", "INSTANT", "UnsupportedTypeProtoAdapter", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: loaded from: classes3.dex */
        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/squareup/wire/ProtoAdapter$Companion$UnsupportedTypeProtoAdapter;", "Lcom/squareup/wire/ProtoAdapter;", "", "<init>", "()V", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class UnsupportedTypeProtoAdapter extends ProtoAdapter {
            public UnsupportedTypeProtoAdapter() {
                super(FieldEncoding.LENGTH_DELIMITED, (KClass<?>) Reflection.f71922a.b(Void.class));
            }

            @Override // com.squareup.wire.ProtoAdapter
            public final Object b(ProtoReader32 protoReader32) {
                protoReader32.getClass();
                throw new IllegalStateException("Operation not supported.");
            }

            @Override // com.squareup.wire.ProtoAdapter
            public final Object c(ProtoReader protoReader) {
                protoReader.getClass();
                throw new IllegalStateException("Operation not supported.");
            }

            @Override // com.squareup.wire.ProtoAdapter
            public final void d(ProtoWriter protoWriter, Object obj) {
                protoWriter.getClass();
                ((Void) obj).getClass();
                throw new IllegalStateException("Operation not supported.");
            }

            @Override // com.squareup.wire.ProtoAdapter
            public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
                reverseProtoWriter.getClass();
                ((Void) obj).getClass();
                throw new IllegalStateException("Operation not supported.");
            }

            @Override // com.squareup.wire.ProtoAdapter
            public final int h(Object obj) {
                ((Void) obj).getClass();
                throw new IllegalStateException("Operation not supported.");
            }
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        FieldEncoding fieldEncoding = FieldEncoding.VARINT;
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        KClass kClassB = reflectionFactory.b(Boolean.TYPE);
        Syntax syntax = Syntax.PROTO_2;
        int i2 = 32;
        DefaultConstructorMarker defaultConstructorMarker = null;
        String str = null;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = new ProtoAdapterKt$commonBool$1(fieldEncoding, kClassB, null, syntax, Boolean.FALSE, str, i2, defaultConstructorMarker);
        g = protoAdapterKt$commonBool$1;
        Class cls = Integer.TYPE;
        int i3 = 0;
        String str2 = null;
        ProtoAdapterKt$commonInt32$1 protoAdapterKt$commonInt32$1 = new ProtoAdapterKt$commonInt32$1(fieldEncoding, reflectionFactory.b(cls), str2, syntax, i3, str, i2, defaultConstructorMarker);
        f43454h = protoAdapterKt$commonInt32$1;
        new IntArrayProtoAdapter(protoAdapterKt$commonInt32$1);
        ProtoAdapterKt$commonUint32$1 protoAdapterKt$commonUint32$1 = new ProtoAdapterKt$commonUint32$1(fieldEncoding, reflectionFactory.b(cls), str2, syntax, i3, str, i2, defaultConstructorMarker);
        f43455i = protoAdapterKt$commonUint32$1;
        new IntArrayProtoAdapter(protoAdapterKt$commonUint32$1);
        new IntArrayProtoAdapter(new ProtoAdapterKt$commonSint32$1(fieldEncoding, reflectionFactory.b(cls), str2, syntax, i3, str, i2, defaultConstructorMarker));
        FieldEncoding fieldEncoding2 = FieldEncoding.FIXED32;
        int i4 = 32;
        DefaultConstructorMarker defaultConstructorMarker2 = null;
        String str3 = null;
        ProtoAdapterKt$commonFixed32$1 protoAdapterKt$commonFixed32$1 = new ProtoAdapterKt$commonFixed32$1(fieldEncoding2, reflectionFactory.b(cls), str, syntax, i3, str3, i4, defaultConstructorMarker2);
        f43456j = protoAdapterKt$commonFixed32$1;
        new IntArrayProtoAdapter(protoAdapterKt$commonFixed32$1);
        new IntArrayProtoAdapter(new ProtoAdapterKt$commonFixed32$1(fieldEncoding2, reflectionFactory.b(cls), null, syntax, i3, str3, i4, defaultConstructorMarker2));
        Class cls2 = Long.TYPE;
        long j2 = 0L;
        int i5 = 32;
        DefaultConstructorMarker defaultConstructorMarker3 = null;
        String str4 = null;
        String str5 = null;
        ProtoAdapterKt$commonInt64$1 protoAdapterKt$commonInt64$1 = new ProtoAdapterKt$commonInt64$1(fieldEncoding, reflectionFactory.b(cls2), str4, syntax, j2, str5, i5, defaultConstructorMarker3);
        f43457k = protoAdapterKt$commonInt64$1;
        new LongArrayProtoAdapter(protoAdapterKt$commonInt64$1);
        ProtoAdapterKt$commonUint64$1 protoAdapterKt$commonUint64$1 = new ProtoAdapterKt$commonUint64$1(fieldEncoding, reflectionFactory.b(cls2), str4, syntax, j2, str5, i5, defaultConstructorMarker3);
        l = protoAdapterKt$commonUint64$1;
        new LongArrayProtoAdapter(protoAdapterKt$commonUint64$1);
        new LongArrayProtoAdapter(new ProtoAdapterKt$commonSint64$1(fieldEncoding, reflectionFactory.b(cls2), str4, syntax, j2, str5, i5, defaultConstructorMarker3));
        FieldEncoding fieldEncoding3 = FieldEncoding.FIXED64;
        int i6 = 32;
        DefaultConstructorMarker defaultConstructorMarker4 = null;
        String str6 = null;
        ProtoAdapterKt$commonFixed64$1 protoAdapterKt$commonFixed64$1 = new ProtoAdapterKt$commonFixed64$1(fieldEncoding3, reflectionFactory.b(cls2), str5, syntax, j2, str6, i6, defaultConstructorMarker4);
        m = protoAdapterKt$commonFixed64$1;
        new LongArrayProtoAdapter(protoAdapterKt$commonFixed64$1);
        new LongArrayProtoAdapter(new ProtoAdapterKt$commonFixed64$1(fieldEncoding3, reflectionFactory.b(cls2), null, syntax, j2, str6, i6, defaultConstructorMarker4));
        FloatProtoAdapter floatProtoAdapter = new FloatProtoAdapter();
        new FloatArrayProtoAdapter(floatProtoAdapter);
        DoubleProtoAdapter doubleProtoAdapter = new DoubleProtoAdapter();
        n = doubleProtoAdapter;
        new DoubleArrayProtoAdapter(doubleProtoAdapter);
        FieldEncoding fieldEncoding4 = FieldEncoding.LENGTH_DELIMITED;
        ProtoAdapterKt$commonBytes$1 protoAdapterKt$commonBytes$1 = new ProtoAdapterKt$commonBytes$1(fieldEncoding4, reflectionFactory.b(ByteString.class), null, syntax, ByteString.f77399f, str6, i6, defaultConstructorMarker4);
        o = protoAdapterKt$commonBytes$1;
        String str7 = null;
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = new ProtoAdapterKt$commonString$1(fieldEncoding4, reflectionFactory.b(String.class), str7, syntax, "", str6, i6, defaultConstructorMarker4);
        p = protoAdapterKt$commonString$1;
        KClass kClassB2 = reflectionFactory.b(Unit.class);
        Syntax syntax2 = Syntax.PROTO_3;
        int i7 = 48;
        DefaultConstructorMarker defaultConstructorMarker5 = null;
        Object obj = null;
        String str8 = null;
        new ProtoAdapterKt$commonEmpty$1(fieldEncoding4, kClassB2, "type.googleapis.com/google.protobuf.Empty", syntax2, obj, str8, i7, defaultConstructorMarker5);
        q = new ProtoAdapterKt$commonStructMap$1(fieldEncoding4, reflectionFactory.b(Map.class), "type.googleapis.com/google.protobuf.Struct", syntax2, obj, str8, i7, defaultConstructorMarker5);
        r = new ProtoAdapterKt$commonStructList$1(fieldEncoding4, reflectionFactory.b(Map.class), "type.googleapis.com/google.protobuf.ListValue", syntax2, obj, str8, i7, defaultConstructorMarker5);
        s = new ProtoAdapterKt$commonStructNull$1(fieldEncoding, reflectionFactory.b(Void.class), "type.googleapis.com/google.protobuf.NullValue", syntax2, null, str7, 48, null);
        t = new ProtoAdapterKt$commonStructValue$1(fieldEncoding4, reflectionFactory.b(Object.class), "type.googleapis.com/google.protobuf.Value", syntax2, obj, str8, i7, defaultConstructorMarker5);
        ProtoAdapterKt.a(doubleProtoAdapter, "type.googleapis.com/google.protobuf.DoubleValue");
        ProtoAdapterKt.a(floatProtoAdapter, "type.googleapis.com/google.protobuf.FloatValue");
        ProtoAdapterKt.a(protoAdapterKt$commonInt64$1, "type.googleapis.com/google.protobuf.Int64Value");
        ProtoAdapterKt.a(protoAdapterKt$commonUint64$1, "type.googleapis.com/google.protobuf.UInt64Value");
        ProtoAdapterKt.a(protoAdapterKt$commonInt32$1, "type.googleapis.com/google.protobuf.Int32Value");
        ProtoAdapterKt.a(protoAdapterKt$commonUint32$1, "type.googleapis.com/google.protobuf.UInt32Value");
        ProtoAdapterKt.a(protoAdapterKt$commonBool$1, "type.googleapis.com/google.protobuf.BoolValue");
        ProtoAdapterKt.a(protoAdapterKt$commonString$1, "type.googleapis.com/google.protobuf.StringValue");
        ProtoAdapterKt.a(protoAdapterKt$commonBytes$1, "type.googleapis.com/google.protobuf.BytesValue");
        try {
            new ProtoAdapterKt$commonDuration$1(fieldEncoding4, reflectionFactory.b(Duration.class), "type.googleapis.com/google.protobuf.Duration", syntax2, null, null, 48, null);
        } catch (NoClassDefFoundError unused) {
            new Companion.UnsupportedTypeProtoAdapter();
        }
        try {
            new ProtoAdapterKt$commonInstant$1(FieldEncoding.LENGTH_DELIMITED, Reflection.f71922a.b(Instant.class), "type.googleapis.com/google.protobuf.Timestamp", Syntax.PROTO_3, null, null, 48, null);
        } catch (NoClassDefFoundError unused2) {
            new Companion.UnsupportedTypeProtoAdapter();
        }
    }

    public ProtoAdapter(FieldEncoding fieldEncoding, KClass<?> kClass, String str, Syntax syntax, E e2, String str2) {
        FieldEncoding fieldEncoding2;
        fieldEncoding.getClass();
        syntax.getClass();
        this.f43458a = fieldEncoding;
        this.f43459b = kClass;
        this.f43460c = syntax;
        this.d = e2;
        boolean z = this instanceof PackedProtoAdapter;
        RepeatedProtoAdapter repeatedProtoAdapter = null;
        if (!z && !(this instanceof RepeatedProtoAdapter) && fieldEncoding != (fieldEncoding2 = FieldEncoding.LENGTH_DELIMITED)) {
            if (fieldEncoding == fieldEncoding2) {
                md.n("Unable to pack a length-delimited type.");
                throw null;
            }
            new PackedProtoAdapter(this);
        }
        if (!(this instanceof RepeatedProtoAdapter) && !z) {
            repeatedProtoAdapter = new RepeatedProtoAdapter(this);
        }
        this.f43461e = repeatedProtoAdapter;
    }

    public final RepeatedProtoAdapter a() {
        RepeatedProtoAdapter repeatedProtoAdapter = this.f43461e;
        if (repeatedProtoAdapter != null) {
            return repeatedProtoAdapter;
        }
        mt.i("Can't create a repeated adapter from a repeated or packed adapter.");
        return null;
    }

    public Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        return c(protoReader32.i());
    }

    public abstract Object c(ProtoReader protoReader);

    public abstract void d(ProtoWriter protoWriter, Object obj);

    public void e(ReverseProtoWriter reverseProtoWriter, final Object obj) {
        reverseProtoWriter.getClass();
        new Function1<ProtoWriter, Unit>(this) { // from class: com.squareup.wire.ProtoAdapterKt$delegateEncode$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ProtoAdapter f43463b;

            {
                this.f43463b = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                ProtoWriter protoWriter = (ProtoWriter) obj2;
                protoWriter.getClass();
                this.f43463b.d(protoWriter, obj);
                return Unit.f71739a;
            }
        }.invoke((ProtoWriter) reverseProtoWriter.g.getF71699b());
        Buffer buffer = (Buffer) reverseProtoWriter.f43480f.getF71699b();
        reverseProtoWriter.d(buffer.N0(buffer.f77390c));
    }

    public void f(ProtoWriter protoWriter, int i2, Object obj) {
        protoWriter.getClass();
        if (obj != null) {
            FieldEncoding fieldEncoding = this.f43458a;
            fieldEncoding.getClass();
            ProtoWriter.f43473b.getClass();
            protoWriter.b((i2 << 3) | fieldEncoding.getValue());
            if (fieldEncoding == FieldEncoding.LENGTH_DELIMITED) {
                protoWriter.b(h(obj));
            }
            d(protoWriter, obj);
        }
    }

    public void g(ReverseProtoWriter reverseProtoWriter, int i2, Object obj) {
        reverseProtoWriter.getClass();
        if (obj != null) {
            FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            FieldEncoding fieldEncoding2 = this.f43458a;
            if (fieldEncoding2 == fieldEncoding) {
                int iB = reverseProtoWriter.b();
                e(reverseProtoWriter, obj);
                reverseProtoWriter.g(reverseProtoWriter.b() - iB);
            } else {
                e(reverseProtoWriter, obj);
            }
            fieldEncoding2.getClass();
            ProtoWriter.f43473b.getClass();
            reverseProtoWriter.g((i2 << 3) | fieldEncoding2.getValue());
        }
    }

    public abstract int h(Object obj);

    public int i(int i2, Object obj) {
        if (obj == null) {
            return 0;
        }
        int iH = h(obj);
        if (this.f43458a == FieldEncoding.LENGTH_DELIMITED) {
            ProtoWriter.f43473b.getClass();
            iH += ProtoWriter.Companion.a(iH);
        }
        ProtoWriter.f43473b.getClass();
        FieldEncoding fieldEncoding = FieldEncoding.VARINT;
        fieldEncoding.getClass();
        return ProtoWriter.Companion.a(fieldEncoding.getValue() | (i2 << 3)) + iH;
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bB\u001d\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\t¢\u0006\u0004\b\u0007\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;", "Ljava/lang/IllegalArgumentException;", "Lkotlin/IllegalArgumentException;", "", "value", "Lkotlin/reflect/KClass;", "type", "<init>", "(ILkotlin/reflect/KClass;)V", "Ljava/lang/Class;", "(ILjava/lang/Class;)V", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class EnumConstantNotFoundException extends IllegalArgumentException {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f43462b;

        /* JADX WARN: Illegal instructions before constructor call */
        public EnumConstantNotFoundException(int i2, KClass<?> kClass) {
            StringBuilder sbQ = fc.q(i2, "Unknown enum tag ", " for ");
            sbQ.append(kClass != null ? JvmClassMappingKt.b(kClass).getName() : null);
            super(sbQ.toString());
            this.f43462b = i2;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public EnumConstantNotFoundException(int i2, Class<?> cls) {
            this(i2, (KClass<?>) Reflection.f71922a.b(cls));
            cls.getClass();
        }
    }

    public /* synthetic */ ProtoAdapter(FieldEncoding fieldEncoding, KClass kClass, String str, Syntax syntax, Object obj, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(fieldEncoding, (KClass<?>) kClass, str, syntax, (i2 & 16) != 0 ? null : obj, (i2 & 32) != 0 ? null : str2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProtoAdapter(FieldEncoding fieldEncoding, Class<?> cls) {
        this(fieldEncoding, (KClass<?>) Reflection.f71922a.b(cls));
        fieldEncoding.getClass();
        cls.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProtoAdapter(FieldEncoding fieldEncoding, Class<?> cls, String str) {
        this(fieldEncoding, (KClass<?>) Reflection.f71922a.b(cls), str, Syntax.PROTO_2);
        fieldEncoding.getClass();
        cls.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProtoAdapter(FieldEncoding fieldEncoding, Class<?> cls, String str, Syntax syntax) {
        this(fieldEncoding, (KClass<?>) Reflection.f71922a.b(cls), str, syntax);
        fieldEncoding.getClass();
        cls.getClass();
        syntax.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProtoAdapter(FieldEncoding fieldEncoding, Class<?> cls, String str, Syntax syntax, E e2) {
        this(fieldEncoding, (KClass<?>) Reflection.f71922a.b(cls), str, syntax, e2, (String) null);
        fieldEncoding.getClass();
        cls.getClass();
        syntax.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProtoAdapter(FieldEncoding fieldEncoding, Class<?> cls, String str, Syntax syntax, E e2, String str2) {
        this(fieldEncoding, (KClass<?>) Reflection.f71922a.b(cls), str, syntax, e2, str2);
        fieldEncoding.getClass();
        cls.getClass();
        syntax.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProtoAdapter(FieldEncoding fieldEncoding, KClass<?> kClass) {
        this(fieldEncoding, kClass, (String) null, Syntax.PROTO_2);
        fieldEncoding.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProtoAdapter(FieldEncoding fieldEncoding, KClass<?> kClass, String str) {
        this(fieldEncoding, kClass, str, Syntax.PROTO_2);
        fieldEncoding.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProtoAdapter(FieldEncoding fieldEncoding, KClass<?> kClass, String str, Syntax syntax) {
        this(fieldEncoding, kClass, str, syntax, (Object) null);
        fieldEncoding.getClass();
        syntax.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProtoAdapter(FieldEncoding fieldEncoding, KClass<?> kClass, String str, Syntax syntax, E e2) {
        this(fieldEncoding, kClass, str, syntax, e2, (String) null);
        fieldEncoding.getClass();
        syntax.getClass();
    }
}

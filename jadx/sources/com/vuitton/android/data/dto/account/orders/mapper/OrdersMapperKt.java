package com.vuitton.android.data.dto.account.orders.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.account.orders.ChannelDto;
import com.vuitton.android.data.dto.account.orders.DeliveryStateDto;
import com.vuitton.android.data.dto.account.orders.ShippingTypeDto;
import com.vuitton.android.data.dto.account.orders.StateDto;
import com.vuitton.android.data.dto.account.orders.ValidationDto;
import com.vuitton.foundation.model.domain.model.account.orders.DeliveryState;
import com.vuitton.foundation.model.domain.model.account.orders.State;
import com.vuitton.foundation.model.domain.model.account.orders.Validation;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OrdersMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f44438a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f44439b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f44440c;
        public static final /* synthetic */ int[] d;

        static {
            int[] iArr = new int[ChannelDto.values().length];
            try {
                iArr[ChannelDto.OFFLINE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ChannelDto.ONLINE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ChannelDto.PHONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f44438a = iArr;
            int[] iArr2 = new int[ShippingTypeDto.values().length];
            try {
                iArr2[ShippingTypeDto.CLICK_AND_COLLECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            f44439b = iArr2;
            int[] iArr3 = new int[StateDto.values().length];
            try {
                iArr3[StateDto.PAST.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr3[StateDto.CURRENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr3[StateDto.FUTURE.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            f44440c = iArr3;
            int[] iArr4 = new int[ValidationDto.values().length];
            try {
                iArr4[ValidationDto.VALIDATED.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr4[ValidationDto.PENDING.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr4[ValidationDto.CANCELLED.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            d = iArr4;
        }
    }

    public static final DeliveryState a(DeliveryStateDto deliveryStateDto) {
        State state;
        deliveryStateDto.getClass();
        String str = deliveryStateDto.f44351a;
        String str2 = deliveryStateDto.f44352b;
        if (str2 == null) {
            str2 = "";
        }
        boolean z = deliveryStateDto.f44353c;
        StateDto stateDto = deliveryStateDto.d;
        stateDto.getClass();
        int i2 = WhenMappings.f44440c[stateDto.ordinal()];
        if (i2 == 1) {
            state = State.PAST;
        } else if (i2 == 2) {
            state = State.CURRENT;
        } else {
            if (i2 != 3) {
                v40.g();
                return null;
            }
            state = State.FUTURE;
        }
        return new DeliveryState(str, str2, z, state);
    }

    public static final Validation b(ValidationDto validationDto) {
        validationDto.getClass();
        int i2 = WhenMappings.d[validationDto.ordinal()];
        if (i2 == 1) {
            return Validation.VALIDATED;
        }
        if (i2 == 2) {
            return Validation.PENDING;
        }
        if (i2 == 3) {
            return Validation.CANCELLED;
        }
        v40.g();
        return null;
    }

    /*  JADX ERROR: NullPointerException in pass: ConstructorVisitor
        java.lang.NullPointerException
        	at jadx.core.dex.visitors.MoveInlineVisitor.processMove(MoveInlineVisitor.java:52)
        	at jadx.core.dex.visitors.MoveInlineVisitor.moveInline(MoveInlineVisitor.java:41)
        	at jadx.core.dex.visitors.ConstructorVisitor.visit(ConstructorVisitor.java:43)
        */
    public static final com.vuitton.foundation.model.domain.model.account.orders.OrderList c(
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r43v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:215)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:150)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:415)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
        */
    /*  JADX ERROR: NullPointerException in pass: ConstructorVisitor
        java.lang.NullPointerException
        	at jadx.core.dex.visitors.MoveInlineVisitor.processMove(MoveInlineVisitor.java:52)
        	at jadx.core.dex.visitors.MoveInlineVisitor.moveInline(MoveInlineVisitor.java:41)
        */
}

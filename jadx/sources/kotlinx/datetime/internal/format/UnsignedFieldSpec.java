package kotlinx.datetime.internal.format;

import defpackage.md;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00030\u0002BS\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00030\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lkotlinx/datetime/internal/format/UnsignedFieldSpec;", "Target", "Lkotlinx/datetime/internal/format/AbstractFieldSpec;", "", "Lkotlinx/datetime/internal/format/Accessor;", "accessor", "minValue", "maxValue", "", "name", "defaultValue", "Lkotlinx/datetime/internal/format/FieldSign;", "sign", "<init>", "(Lkotlinx/datetime/internal/format/Accessor;IILjava/lang/String;Ljava/lang/Integer;Lkotlinx/datetime/internal/format/FieldSign;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UnsignedFieldSpec<Target> extends AbstractFieldSpec<Target, Integer> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Accessor f75420a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f75421b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f75422c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Integer f75423e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FieldSign f75424f;
    public final int g;

    public UnsignedFieldSpec(Accessor<? super Target, Integer> accessor, int i2, int i3, String str, Integer num, FieldSign<? super Target> fieldSign) {
        int i4;
        accessor.getClass();
        str.getClass();
        this.f75420a = accessor;
        this.f75421b = i2;
        this.f75422c = i3;
        this.d = str;
        this.f75423e = num;
        this.f75424f = fieldSign;
        if (i3 < 10) {
            i4 = 1;
        } else if (i3 < 100) {
            i4 = 2;
        } else {
            if (i3 >= 1000) {
                md.n(n00.m(i3, "Max value ", " is too large"));
                throw null;
            }
            i4 = 3;
        }
        this.g = i4;
    }

    @Override // kotlinx.datetime.internal.format.FieldSpec
    /* JADX INFO: renamed from: a */
    public final Object getF75397c() {
        return this.f75423e;
    }

    @Override // kotlinx.datetime.internal.format.FieldSpec
    /* JADX INFO: renamed from: b, reason: from getter */
    public final Accessor getF75420a() {
        return this.f75420a;
    }

    @Override // kotlinx.datetime.internal.format.FieldSpec
    /* JADX INFO: renamed from: c, reason: from getter */
    public final FieldSign getF75424f() {
        return this.f75424f;
    }

    @Override // kotlinx.datetime.internal.format.FieldSpec
    /* JADX INFO: renamed from: getName, reason: from getter */
    public final String getD() {
        return this.d;
    }

    public /* synthetic */ UnsignedFieldSpec(Accessor accessor, int i2, int i3, String str, Integer num, FieldSign fieldSign, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(accessor, i2, i3, (i4 & 8) != 0 ? accessor.getName() : str, (i4 & 16) != 0 ? null : num, (i4 & 32) != 0 ? null : fieldSign);
    }
}

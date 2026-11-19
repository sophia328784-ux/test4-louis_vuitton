package kotlinx.datetime.internal.format;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u0000*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003BC\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00018\u0001\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lkotlinx/datetime/internal/format/GenericFieldSpec;", "Target", "Type", "Lkotlinx/datetime/internal/format/AbstractFieldSpec;", "Lkotlinx/datetime/internal/format/Accessor;", "accessor", "", "name", "defaultValue", "Lkotlinx/datetime/internal/format/FieldSign;", "sign", "<init>", "(Lkotlinx/datetime/internal/format/Accessor;Ljava/lang/String;Ljava/lang/Object;Lkotlinx/datetime/internal/format/FieldSign;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GenericFieldSpec<Target, Type> extends AbstractFieldSpec<Target, Type> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Accessor f75395a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f75396b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f75397c;
    public final FieldSign d;

    public /* synthetic */ GenericFieldSpec(Accessor accessor, String str, Object obj, FieldSign fieldSign, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(accessor, (i2 & 2) != 0 ? accessor.getName() : str, (i2 & 4) != 0 ? null : obj, (i2 & 8) != 0 ? null : fieldSign);
    }

    @Override // kotlinx.datetime.internal.format.FieldSpec
    /* JADX INFO: renamed from: a, reason: from getter */
    public final Object getF75397c() {
        return this.f75397c;
    }

    @Override // kotlinx.datetime.internal.format.FieldSpec
    /* JADX INFO: renamed from: b, reason: from getter */
    public final Accessor getF75395a() {
        return this.f75395a;
    }

    @Override // kotlinx.datetime.internal.format.FieldSpec
    /* JADX INFO: renamed from: c, reason: from getter */
    public final FieldSign getD() {
        return this.d;
    }

    @Override // kotlinx.datetime.internal.format.FieldSpec
    /* JADX INFO: renamed from: getName, reason: from getter */
    public final String getF75396b() {
        return this.f75396b;
    }

    public GenericFieldSpec(Accessor<? super Target, Type> accessor, String str, Type type, FieldSign<? super Target> fieldSign) {
        accessor.getClass();
        str.getClass();
        this.f75395a = accessor;
        this.f75396b = str;
        this.f75397c = type;
        this.d = fieldSign;
    }
}

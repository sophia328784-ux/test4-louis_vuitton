package androidx.compose.ui.semantics;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B/\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u001e\b\u0002\u0010\u0006\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0005¢\u0006\u0004\b\u0007\u0010\bB\u0019\b\u0010\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0007\u0010\u000bBC\b\u0010\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u001c\u0010\u0006\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/compose/ui/semantics/SemanticsPropertyKey;", "T", "", "", "name", "Lkotlin/Function2;", "mergePolicy", "<init>", "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V", "", "isImportantForAccessibility", "(Ljava/lang/String;Z)V", "accessibilityExtraKey", "(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Ljava/lang/String;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SemanticsPropertyKey<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f10363a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function2 f10364b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f10365c;
    public final String d;

    /* JADX INFO: renamed from: androidx.compose.ui.semantics.SemanticsPropertyKey$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0004\n\u0002\b\u0006\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0000\u0010\u00012\b\u0010\u0002\u001a\u0004\u0018\u0001H\u00012\u0006\u0010\u0003\u001a\u0002H\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "T", "parentValue", "childValue", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class AnonymousClass1 extends Lambda implements Function2<T, T, T> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final AnonymousClass1 f10366c = new AnonymousClass1(2);

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return obj == null ? obj2 : obj;
        }
    }

    public /* synthetic */ SemanticsPropertyKey(String str, Function2 function2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? AnonymousClass1.f10366c : function2);
    }

    public final String toString() {
        return "AccessibilityKey: " + this.f10363a;
    }

    public SemanticsPropertyKey(String str, Function2<? super T, ? super T, ? extends T> function2) {
        this.f10363a = str;
        this.f10364b = function2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SemanticsPropertyKey(String str, boolean z) {
        this(str, (Function2) null, 2, (DefaultConstructorMarker) (0 == true ? 1 : 0));
        this.f10365c = z;
    }

    public /* synthetic */ SemanticsPropertyKey(String str, boolean z, Function2 function2, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, z, function2, (i2 & 8) != 0 ? null : str2);
    }

    public SemanticsPropertyKey(String str, boolean z, Function2<? super T, ? super T, ? extends T> function2, String str2) {
        this(str, function2);
        this.f10365c = z;
        this.d = str2;
    }
}

package kotlin.reflect.jvm.internal.impl.util;

import java.util.Arrays;
import java.util.Collection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes4.dex */
public final class Checks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Name f74334a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Regex f74335b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Collection f74336c;
    public final Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Check[] f74337e;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.util.Checks$2, reason: invalid class name */
    public static final class AnonymousClass2 implements Function1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final AnonymousClass2 f74338b = new AnonymousClass2();

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            ((FunctionDescriptor) obj).getClass();
            return null;
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.util.Checks$3, reason: invalid class name */
    public static final class AnonymousClass3 implements Function1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final AnonymousClass3 f74339b = new AnonymousClass3();

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            ((FunctionDescriptor) obj).getClass();
            return null;
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.util.Checks$4, reason: invalid class name */
    public static final class AnonymousClass4 implements Function1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final AnonymousClass4 f74340b = new AnonymousClass4();

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            ((FunctionDescriptor) obj).getClass();
            return null;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Checks(Name name, Check[] checkArr, Function1<? super FunctionDescriptor, String> function1) {
        this(name, (Regex) null, (Collection) null, function1, (Check[]) Arrays.copyOf(checkArr, checkArr.length));
        name.getClass();
        checkArr.getClass();
        function1.getClass();
    }

    public /* synthetic */ Checks(Name name, Check[] checkArr, Function1 function1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(name, checkArr, (Function1<? super FunctionDescriptor, String>) ((i2 & 4) != 0 ? AnonymousClass2.f74338b : function1));
    }

    public Checks(Name name, Regex regex, Collection collection, Function1 function1, Check... checkArr) {
        this.f74334a = name;
        this.f74335b = regex;
        this.f74336c = collection;
        this.d = function1;
        this.f74337e = checkArr;
    }

    public /* synthetic */ Checks(Regex regex, Check[] checkArr, Function1 function1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(regex, checkArr, (Function1<? super FunctionDescriptor, String>) ((i2 & 4) != 0 ? AnonymousClass3.f74339b : function1));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Checks(Regex regex, Check[] checkArr, Function1<? super FunctionDescriptor, String> function1) {
        this((Name) null, regex, (Collection) null, function1, (Check[]) Arrays.copyOf(checkArr, checkArr.length));
        regex.getClass();
        checkArr.getClass();
        function1.getClass();
    }

    public /* synthetic */ Checks(Collection collection, Check[] checkArr, Function1 function1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((Collection<Name>) collection, checkArr, (Function1<? super FunctionDescriptor, String>) ((i2 & 4) != 0 ? AnonymousClass4.f74340b : function1));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Checks(Collection<Name> collection, Check[] checkArr, Function1<? super FunctionDescriptor, String> function1) {
        this((Name) null, (Regex) null, collection, function1, (Check[]) Arrays.copyOf(checkArr, checkArr.length));
        collection.getClass();
        checkArr.getClass();
        function1.getClass();
    }
}

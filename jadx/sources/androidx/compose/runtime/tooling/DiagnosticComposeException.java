package androidx.compose.runtime.tooling;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.AbstractCollection;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00060\u0001j\u0002`\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/runtime/tooling/DiagnosticComposeException;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "Landroidx/compose/runtime/tooling/ComposeStackTrace;", "trace", "<init>", "(Landroidx/compose/runtime/tooling/ComposeStackTrace;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DiagnosticComposeException extends RuntimeException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ComposeStackTrace f8562b;

    public DiagnosticComposeException(ComposeStackTrace composeStackTrace) {
        this.f8562b = composeStackTrace;
        if (composeStackTrace.f8552b) {
            return;
        }
        int[] iArr = {201, 202, 204, 206, 207, 125, -127, 126665345, 200};
        List list = composeStackTrace.f8551a;
        int size = list.size();
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < size) {
            int i3 = i2 + 1;
            ComposeStackTraceFrame composeStackTraceFrame = (ComposeStackTraceFrame) list.get(i2);
            if (!ArraysKt.g(iArr, composeStackTraceFrame.f8554a)) {
                if (composeStackTraceFrame.f8554a == 100) {
                    int i4 = i2 + 2;
                    if (i4 < size && ((ComposeStackTraceFrame) list.get(i4)).f8554a == 1000) {
                        break;
                    } else {
                        CollectionsKt.d0(arrayList);
                    }
                } else {
                    arrayList.add(composeStackTraceFrame);
                }
            }
            i2 = i3;
        }
        int size2 = arrayList.size();
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[size2];
        for (int i5 = 0; i5 < size2; i5++) {
            stackTraceElementArr[i5] = new StackTraceElement("$$compose", "m$" + ((ComposeStackTraceFrame) arrayList.get(i5)).f8554a, "SourceFile", 1);
        }
        setStackTrace(stackTraceElementArr);
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Throwable
    public final String getMessage() {
        ComposeStackTrace composeStackTrace = this.f8562b;
        if (!composeStackTrace.f8552b) {
            return "Composition stack when thrown:";
        }
        StringBuilder sb = new StringBuilder("Composition stack when thrown:\n");
        ListBuilder listBuilderV = CollectionsKt.v();
        List listM = CollectionsKt.m(composeStackTrace.f8551a);
        int f8300e = ((AbstractCollection) listM).getF8300e();
        String str = null;
        String str2 = null;
        for (int i2 = 0; i2 < f8300e; i2++) {
            ComposeStackTraceFrame composeStackTraceFrame = (ComposeStackTraceFrame) listM.get(i2);
            SourceInformation sourceInformation = composeStackTraceFrame.f8555b;
            Integer num = composeStackTraceFrame.f8556c;
            if (sourceInformation != null) {
                boolean z = sourceInformation.f8572a;
                String str3 = sourceInformation.f8573b;
                if (str3 == null) {
                    String str4 = z ? "<lambda>" : null;
                    if (str4 != null) {
                        str = str4;
                    } else if (str == null) {
                        str = "<unknown function>";
                    }
                } else {
                    str = str3;
                }
                String str5 = sourceInformation.f8574c;
                if (str5 != null) {
                    str2 = str5;
                } else if (str2 == null) {
                    str2 = "<unknown file>";
                }
                List list = sourceInformation.f8576f;
                String str6 = str + '(' + str2 + ':' + ((num == null || num.intValue() >= list.size()) ? "<unknown line>" : String.valueOf(((LocationSourceInformation) list.get(num.intValue())).f8564a)) + ')';
                if (!z) {
                }
                if (!Intrinsics.c(str3, "rememberCompositionContext") || !Intrinsics.c(sourceInformation.f8575e, "9igjgp")) {
                    listBuilderV.add(str6);
                }
            }
        }
        List listM2 = CollectionsKt.m(CollectionsKt.r(listBuilderV));
        int f8300e2 = ((AbstractCollection) listM2).getF8300e();
        for (int i3 = 0; i3 < f8300e2; i3++) {
            String str7 = (String) listM2.get(i3);
            sb.append("\tat ");
            sb.append(str7);
            sb.append('\n');
        }
        return sb.toString();
    }
}

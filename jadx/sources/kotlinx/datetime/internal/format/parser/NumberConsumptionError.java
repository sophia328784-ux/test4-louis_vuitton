package kotlinx.datetime.internal.format.parser;

import defpackage.a;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\b`\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/datetime/internal/format/parser/NumberConsumptionError;", "", "Conflicting", "ExpectedInt", "TooFewDigits", "TooManyDigits", "WrongConstant", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface NumberConsumptionError {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/datetime/internal/format/parser/NumberConsumptionError$Conflicting;", "Lkotlinx/datetime/internal/format/parser/NumberConsumptionError;", "", "conflicting", "<init>", "(Ljava/lang/Object;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Conflicting implements NumberConsumptionError {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f75443a;

        public Conflicting(Object obj) {
            obj.getClass();
            this.f75443a = obj;
        }

        @Override // kotlinx.datetime.internal.format.parser.NumberConsumptionError
        public final String a() {
            return o60.r(new StringBuilder("attempted to overwrite the existing value '"), this.f75443a, '\'');
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/datetime/internal/format/parser/NumberConsumptionError$ExpectedInt;", "Lkotlinx/datetime/internal/format/parser/NumberConsumptionError;", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ExpectedInt implements NumberConsumptionError {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ExpectedInt f75444a = new ExpectedInt();

        @Override // kotlinx.datetime.internal.format.parser.NumberConsumptionError
        public final String a() {
            return "expected an Int value";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/datetime/internal/format/parser/NumberConsumptionError$TooFewDigits;", "Lkotlinx/datetime/internal/format/parser/NumberConsumptionError;", "", "minDigits", "<init>", "(I)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class TooFewDigits implements NumberConsumptionError {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f75445a;

        public TooFewDigits(int i2) {
            this.f75445a = i2;
        }

        @Override // kotlinx.datetime.internal.format.parser.NumberConsumptionError
        public final String a() {
            return a.i(this.f75445a, " digits", new StringBuilder("expected at least "));
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/datetime/internal/format/parser/NumberConsumptionError$TooManyDigits;", "Lkotlinx/datetime/internal/format/parser/NumberConsumptionError;", "", "maxDigits", "<init>", "(I)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class TooManyDigits implements NumberConsumptionError {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f75446a;

        public TooManyDigits(int i2) {
            this.f75446a = i2;
        }

        @Override // kotlinx.datetime.internal.format.parser.NumberConsumptionError
        public final String a() {
            return a.i(this.f75446a, " digits", new StringBuilder("expected at most "));
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/datetime/internal/format/parser/NumberConsumptionError$WrongConstant;", "Lkotlinx/datetime/internal/format/parser/NumberConsumptionError;", "", "expected", "<init>", "(Ljava/lang/String;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class WrongConstant implements NumberConsumptionError {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f75447a;

        public WrongConstant(String str) {
            str.getClass();
            this.f75447a = str;
        }

        @Override // kotlinx.datetime.internal.format.parser.NumberConsumptionError
        public final String a() {
            return fc.l(new StringBuilder("expected '"), this.f75447a, '\'');
        }
    }

    String a();
}

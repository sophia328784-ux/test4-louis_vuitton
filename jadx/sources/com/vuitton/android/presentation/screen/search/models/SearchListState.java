package com.vuitton.android.presentation.screen.search.models;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0004\u0003\u0004\u0005\u0006\u0082\u0001\u0004\u0007\b\t\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchListState;", "T", "", "Idle", "Loading", "Result", "Error", "Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Error;", "Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Idle;", "Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Loading;", "Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class SearchListState<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f64253a;

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Idle;", "T", "Lcom/vuitton/android/presentation/screen/search/models/SearchListState;", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Idle<T> extends SearchListState<T> {
        public Idle() {
            super(true, null);
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Loading;", "T", "Lcom/vuitton/android/presentation/screen/search/models/SearchListState;", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Loading<T> extends SearchListState<T> {
        public Loading() {
            super(true, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0004\b\u0007\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;", "T", "Lcom/vuitton/android/presentation/screen/search/models/SearchListState;", "", "list", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Result<T> extends SearchListState<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f64254b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Result(List<? extends T> list) {
            super(false, null);
            list.getClass();
            this.f64254b = list;
        }
    }

    public SearchListState(boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this.f64253a = z;
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0007\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B\u0013\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Error;", "T", "Lcom/vuitton/android/presentation/screen/search/models/SearchListState;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Error<T> extends SearchListState<T> {
        public /* synthetic */ Error(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : str);
        }

        public Error(String str) {
            super(false, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Error() {
            this(null, 1, 0 == true ? 1 : 0);
        }
    }
}

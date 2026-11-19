package com.vuitton.core.infrastructure.data.forms.reader;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;", "", "Lkotlinx/serialization/json/Json;", "json", "Lkotlinx/coroutines/CoroutineDispatcher;", "dispatcher", "<init>", "(Lkotlinx/serialization/json/Json;Lkotlinx/coroutines/CoroutineDispatcher;)V", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FileReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Json f66137a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineDispatcher f66138b;

    public FileReader(Json json, CoroutineDispatcher coroutineDispatcher) {
        json.getClass();
        coroutineDispatcher.getClass();
        this.f66137a = json;
        this.f66138b = coroutineDispatcher;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public FileReader(Json json, CoroutineDispatcher coroutineDispatcher, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 2) != 0) {
            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
            coroutineDispatcher = DefaultIoScheduler.f75161b;
        }
        this(json, coroutineDispatcher);
    }
}

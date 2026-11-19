package com.sightcall.getmedia.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0001\u0004B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0001\u0005¨\u0006\u0006"}, d2 = {"Lcom/sightcall/getmedia/model/Failure;", "", "<init>", "()V", "FileNotFound", "Lcom/sightcall/getmedia/model/Failure$FileNotFound;", "GetMedia_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class Failure {

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/getmedia/model/Failure$FileNotFound;", "Lcom/sightcall/getmedia/model/Failure;", "<init>", "()V", "GetMedia_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class FileNotFound extends Failure {
        public static final FileNotFound INSTANCE = new FileNotFound();

        private FileNotFound() {
            super(null);
        }
    }

    public /* synthetic */ Failure(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private Failure() {
    }
}

package com.sightcall.getmedia.di;

import android.content.ContentResolver;
import android.content.Context;
import com.sightcall.getmedia.MediaRepository;
import com.sightcall.getmedia.MediaRepositoryImpl;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005H\u0007¨\u0006\u000b"}, d2 = {"Lcom/sightcall/getmedia/di/MediaModule;", "", "<init>", "()V", "getContentResolver", "Landroid/content/ContentResolver;", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "provideMediaRepository", "Lcom/sightcall/getmedia/MediaRepository;", "contentResolver", "GetMedia_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Module
public final class MediaModule {
    @MediaScope
    @Provides
    public final ContentResolver getContentResolver(Context context) {
        context.getClass();
        ContentResolver contentResolver = context.getContentResolver();
        contentResolver.getClass();
        return contentResolver;
    }

    @MediaScope
    @Provides
    public final MediaRepository provideMediaRepository(ContentResolver contentResolver) {
        contentResolver.getClass();
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        return new MediaRepositoryImpl(DefaultIoScheduler.f75161b, contentResolver);
    }
}

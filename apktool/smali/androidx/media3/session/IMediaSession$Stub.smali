.class public abstract Landroidx/media3/session/IMediaSession$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/IMediaSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/IMediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/IMediaSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "androidx.media3.session.IMediaSession"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11

    const-string v0, "androidx.media3.session.IMediaSession"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    const/16 v0, 0xe

    const-string v2, "Ignoring malformed Bundle for Rating"

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    const-string v2, "Ignoring malformed Bundle for LibraryParams"

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    move-object v4, p0

    check-cast v4, Landroidx/media3/session/MediaSessionStub;

    if-nez v5, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "unsubscribe(): Ignoring empty parentId"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return v1

    :cond_3
    new-instance p0, Landroidx/media3/session/o0;

    const/4 p2, 0x5

    invoke-direct {p0, p1, p2}, Landroidx/media3/session/o0;-><init>(Ljava/lang/Object;I)V

    new-instance v9, Landroidx/media3/session/c2;

    invoke-direct {v9, p0, v3}, Landroidx/media3/session/c2;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;I)V

    const/4 v7, 0x0

    const v8, 0xc352

    invoke-virtual/range {v4 .. v9}, Landroidx/media3/session/MediaSessionStub;->F2(Landroidx/media3/session/IMediaController;ILandroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return v1

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Landroidx/media3/session/IMediaSession$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    move-object v5, p0

    check-cast v5, Landroidx/media3/session/MediaSessionStub;

    if-nez v6, :cond_4

    goto/16 :goto_6

    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "subscribe(): Ignoring empty parentId"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_5
    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    :try_start_0
    invoke-static {p2}, Landroidx/media3/session/MediaLibraryService$LibraryParams;->a(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance p0, Landroidx/media3/session/s;

    const/16 p2, 0xc

    invoke-direct {p0, p1, v4, p2}, Landroidx/media3/session/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v10, Landroidx/media3/session/c2;

    invoke-direct {v10, p0, v3}, Landroidx/media3/session/c2;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;I)V

    const/4 v8, 0x0

    const v9, 0xc351

    invoke-virtual/range {v5 .. v10}, Landroidx/media3/session/MediaSessionStub;->F2(Landroidx/media3/session/IMediaController;ILandroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-static {v2, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Landroidx/media3/session/IMediaSession$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    move-object v5, p0

    check-cast v5, Landroidx/media3/session/MediaSessionStub;

    if-nez v6, :cond_7

    goto/16 :goto_6

    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "getSearchResult(): Ignoring empty query"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_8
    if-gez p3, :cond_9

    const-string p0, "getSearchResult(): Ignoring negative page"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_9
    if-ge p4, v1, :cond_a

    const-string p0, "getSearchResult(): Ignoring pageSize less than 1"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_a
    if-nez p2, :cond_b

    goto :goto_1

    :cond_b
    :try_start_1
    invoke-static {p2}, Landroidx/media3/session/MediaLibraryService$LibraryParams;->a(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    new-instance p0, Landroidx/media3/session/n0;

    invoke-direct {p0, p1, p3, p4, v4}, Landroidx/media3/session/n0;-><init>(Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    new-instance v10, Landroidx/media3/session/c2;

    invoke-direct {v10, p0, v3}, Landroidx/media3/session/c2;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;I)V

    const/4 v8, 0x0

    const v9, 0xc356

    invoke-virtual/range {v5 .. v10}, Landroidx/media3/session/MediaSessionStub;->F2(Landroidx/media3/session/IMediaController;ILandroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object p0, v0

    invoke-static {v2, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Landroidx/media3/session/IMediaSession$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    move-object v5, p0

    check-cast v5, Landroidx/media3/session/MediaSessionStub;

    if-nez v6, :cond_c

    goto/16 :goto_6

    :cond_c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_d

    const-string p0, "search(): Ignoring empty query"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_d
    if-nez p2, :cond_e

    goto :goto_2

    :cond_e
    :try_start_2
    invoke-static {p2}, Landroidx/media3/session/MediaLibraryService$LibraryParams;->a(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    new-instance p0, Landroidx/media3/session/q0;

    const/16 p2, 0x1a

    invoke-direct {p0, p1, p2, v4}, Landroidx/media3/session/q0;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    new-instance v10, Landroidx/media3/session/c2;

    invoke-direct {v10, p0, v3}, Landroidx/media3/session/c2;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;I)V

    const/4 v8, 0x0

    const v9, 0xc355

    invoke-virtual/range {v5 .. v10}, Landroidx/media3/session/MediaSessionStub;->F2(Landroidx/media3/session/IMediaController;ILandroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    goto/16 :goto_6

    :catch_2
    move-exception v0

    move-object p0, v0

    invoke-static {v2, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Landroidx/media3/session/IMediaSession$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    move-object v5, p0

    check-cast v5, Landroidx/media3/session/MediaSessionStub;

    if-nez v6, :cond_f

    goto/16 :goto_6

    :cond_f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "getChildren(): Ignoring empty parentId"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_10
    if-gez p3, :cond_11

    const-string p0, "getChildren(): Ignoring negative page"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_11
    if-ge p4, v1, :cond_12

    const-string p0, "getChildren(): Ignoring pageSize less than 1"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_12
    if-nez p2, :cond_13

    goto :goto_3

    :cond_13
    :try_start_3
    invoke-static {p2}, Landroidx/media3/session/MediaLibraryService$LibraryParams;->a(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    new-instance p0, Landroidx/media3/session/n;

    invoke-direct {p0, p1, p3, p4, v4}, Landroidx/media3/session/n;-><init>(Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    new-instance v10, Landroidx/media3/session/c2;

    invoke-direct {v10, p0, v3}, Landroidx/media3/session/c2;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;I)V

    const/4 v8, 0x0

    const v9, 0xc353

    invoke-virtual/range {v5 .. v10}, Landroidx/media3/session/MediaSessionStub;->F2(Landroidx/media3/session/IMediaController;ILandroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    goto/16 :goto_6

    :catch_3
    move-exception v0

    move-object p0, v0

    invoke-static {v2, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    move-object v4, p0

    check-cast v4, Landroidx/media3/session/MediaSessionStub;

    if-nez v5, :cond_14

    goto/16 :goto_6

    :cond_14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_15

    const-string p0, "getItem(): Ignoring empty mediaId"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return v1

    :cond_15
    new-instance p0, Landroidx/media3/session/q0;

    invoke-direct {p0, p1, v0}, Landroidx/media3/session/q0;-><init>(Ljava/lang/Object;I)V

    new-instance v9, Landroidx/media3/session/c2;

    invoke-direct {v9, p0, v3}, Landroidx/media3/session/c2;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;I)V

    const/4 v7, 0x0

    const v8, 0xc354

    invoke-virtual/range {v4 .. v9}, Landroidx/media3/session/MediaSessionStub;->F2(Landroidx/media3/session/IMediaController;ILandroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return v1

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/media3/session/IMediaSession$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    move-object v5, p0

    check-cast v5, Landroidx/media3/session/MediaSessionStub;

    if-nez v6, :cond_16

    goto/16 :goto_6

    :cond_16
    if-nez p1, :cond_17

    goto :goto_4

    :cond_17
    :try_start_4
    invoke-static {p1}, Landroidx/media3/session/MediaLibraryService$LibraryParams;->a(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    new-instance p0, Landroidx/media3/session/o0;

    const/16 p1, 0x8

    invoke-direct {p0, v4, p1}, Landroidx/media3/session/o0;-><init>(Ljava/lang/Object;I)V

    new-instance v10, Landroidx/media3/session/c2;

    invoke-direct {v10, p0, v3}, Landroidx/media3/session/c2;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;I)V

    const/4 v8, 0x0

    const v9, 0xc350

    invoke-virtual/range {v5 .. v10}, Landroidx/media3/session/MediaSessionStub;->F2(Landroidx/media3/session/IMediaController;ILandroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    goto/16 :goto_6

    :catch_4
    move-exception v0

    move-object p0, v0

    invoke-static {v2, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, p4, p2}, Landroidx/media3/session/MediaSessionStub;->r(Landroidx/media3/session/IMediaController;III)V

    return v1

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/media3/session/IMediaSession$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/view/Surface;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v2, p0

    check-cast v2, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/session/MediaSessionStub;->t(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;II)V

    return v1

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/media3/session/IMediaSession$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    move-object v7, p3

    check-cast v7, Landroid/os/Bundle;

    invoke-static {p2, p1}, Landroidx/media3/session/IMediaSession$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_18

    move v9, v1

    goto :goto_5

    :cond_18
    move v9, v3

    :goto_5
    move-object v4, p0

    check-cast v4, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual/range {v4 .. v9}, Landroidx/media3/session/MediaSessionStub;->X1(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Landroid/os/Bundle;Z)V

    return v1

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaSessionStub;->p0(Landroidx/media3/session/IMediaController;I)V

    return v1

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaSessionStub;->q(Landroidx/media3/session/IMediaController;I)V

    return v1

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Landroidx/media3/session/IMediaSession$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_19

    move v3, v1

    :cond_19
    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, p4, v3}, Landroidx/media3/session/MediaSessionStub;->R(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V

    return v1

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    move-object v2, p0

    check-cast v2, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/session/MediaSessionStub;->h2(Landroidx/media3/session/IMediaController;IIILandroid/os/IBinder;)V

    return v1

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Landroidx/media3/session/IMediaSession$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, p4, p2}, Landroidx/media3/session/MediaSessionStub;->L0(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V

    return v1

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1a

    move v3, v1

    :cond_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, v3, p2}, Landroidx/media3/session/MediaSessionStub;->w2(Landroidx/media3/session/IMediaController;IZI)V

    return v1

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/session/MediaSessionStub;->s0(Landroidx/media3/session/IMediaController;II)V

    return v1

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/session/MediaSessionStub;->l2(Landroidx/media3/session/IMediaController;II)V

    return v1

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, p4, p2}, Landroidx/media3/session/MediaSessionStub;->T0(Landroidx/media3/session/IMediaController;III)V

    return v1

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/media3/session/IMediaSession$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    move-object v3, p0

    check-cast v3, Landroidx/media3/session/MediaSessionStub;

    if-eqz v4, :cond_20

    if-nez p1, :cond_1b

    goto/16 :goto_6

    :cond_1b
    :try_start_5
    invoke-static {p1}, Landroidx/media3/common/Rating;->a(Landroid/os/Bundle;)Landroidx/media3/common/Rating;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    new-instance p1, Landroidx/media3/session/q0;

    const/16 p2, 0x1c

    invoke-direct {p1, p0, p2}, Landroidx/media3/session/q0;-><init>(Ljava/lang/Object;I)V

    new-instance v8, Landroidx/media3/session/c2;

    invoke-direct {v8, p1, v1}, Landroidx/media3/session/c2;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;I)V

    const/4 v6, 0x0

    const v7, 0x9c4a

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/session/MediaSessionStub;->F2(Landroidx/media3/session/IMediaController;ILandroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    goto/16 :goto_6

    :catch_5
    move-exception v0

    move-object p0, v0

    invoke-static {v2, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Landroidx/media3/session/IMediaSession$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    move-object v3, p0

    check-cast v3, Landroidx/media3/session/MediaSessionStub;

    if-eqz v4, :cond_20

    if-eqz p1, :cond_20

    if-nez p2, :cond_1c

    goto/16 :goto_6

    :cond_1c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const-string p0, "setRatingWithMediaId(): Ignoring empty mediaId"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1d
    :try_start_6
    invoke-static {p2}, Landroidx/media3/common/Rating;->a(Landroid/os/Bundle;)Landroidx/media3/common/Rating;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6

    new-instance p2, Landroidx/media3/session/q0;

    const/16 p3, 0x11

    invoke-direct {p2, p1, p3, p0}, Landroidx/media3/session/q0;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    new-instance v8, Landroidx/media3/session/c2;

    invoke-direct {v8, p2, v1}, Landroidx/media3/session/c2;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;I)V

    const/4 v6, 0x0

    const v7, 0x9c4a

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/session/MediaSessionStub;->F2(Landroidx/media3/session/IMediaController;ILandroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    goto/16 :goto_6

    :catch_6
    move-exception v0

    move-object p0, v0

    invoke-static {v2, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Landroidx/media3/session/IMediaSession$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/session/MediaSessionStub;->D2(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return v1

    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaSessionStub;->Y(Landroidx/media3/session/IMediaController;I)V

    return v1

    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaSessionStub;->o0(Landroidx/media3/session/IMediaController;I)V

    return v1

    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionStub;->L1(Landroidx/media3/session/IMediaController;)V

    return v1

    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    sget-object p4, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Landroidx/media3/session/IMediaSession$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/Surface;

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/session/MediaSessionStub;->o1(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;)V

    return v1

    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaSessionStub;->z0(Landroidx/media3/session/IMediaController;I)V

    return v1

    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaSessionStub;->W(Landroidx/media3/session/IMediaController;I)V

    return v1

    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaSessionStub;->e2(Landroidx/media3/session/IMediaController;I)V

    return v1

    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaSessionStub;->o2(Landroidx/media3/session/IMediaController;I)V

    return v1

    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v2, p0

    check-cast v2, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/session/MediaSessionStub;->Z0(Landroidx/media3/session/IMediaController;IIJ)V

    return v1

    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, v2, v3}, Landroidx/media3/session/MediaSessionStub;->A0(Landroidx/media3/session/IMediaController;IJ)V

    return v1

    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/session/MediaSessionStub;->Y0(Landroidx/media3/session/IMediaController;II)V

    return v1

    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaSessionStub;->r0(Landroidx/media3/session/IMediaController;I)V

    return v1

    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaSessionStub;->L(Landroidx/media3/session/IMediaController;I)V

    return v1

    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaSessionStub;->U1(Landroidx/media3/session/IMediaController;I)V

    return v1

    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Landroidx/media3/session/IMediaSession$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/session/MediaSessionStub;->q1(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return v1

    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, p4, p2}, Landroidx/media3/session/MediaSessionStub;->p1(Landroidx/media3/session/IMediaController;IILandroid/os/IBinder;)V

    return v1

    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/session/MediaSessionStub;->Q0(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V

    return v1

    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Landroidx/media3/session/IMediaSession$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, p4, p2}, Landroidx/media3/session/MediaSessionStub;->S0(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V

    return v1

    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Landroidx/media3/session/IMediaSession$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    if-eqz p1, :cond_20

    if-nez p2, :cond_1e

    goto :goto_6

    :cond_1e
    iget-object p4, p0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroidx/media3/session/ConnectedControllersManager;->g(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p1

    if-nez p1, :cond_1f

    goto :goto_6

    :cond_1f
    :try_start_7
    iget p4, p1, Landroidx/media3/session/MediaSession$ControllerInfo;->c:I

    invoke-static {p4, p2}, Landroidx/media3/common/MediaItem;->b(ILandroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object p2
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_7

    new-instance p4, Landroidx/media3/session/v1;

    const/4 v2, 0x2

    invoke-direct {p4, v2, p2}, Landroidx/media3/session/v1;-><init>(ILandroidx/media3/common/MediaItem;)V

    new-instance p2, Landroidx/media3/session/q0;

    const/16 v2, 0x14

    invoke-direct {p2, v2}, Landroidx/media3/session/q0;-><init>(I)V

    new-instance v3, Landroidx/media3/session/s;

    invoke-direct {v3, p4, p2, v0}, Landroidx/media3/session/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p2, Landroidx/media3/session/c2;

    invoke-direct {p2, v3, v1}, Landroidx/media3/session/c2;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;I)V

    invoke-virtual {p0, p1, p3, v2, p2}, Landroidx/media3/session/MediaSessionStub;->K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    goto :goto_6

    :catch_7
    move-exception v0

    move-object p0, v0

    const-string p1, "Ignoring malformed Bundle for MediaItem"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_20
    :goto_6
    return v1

    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/session/MediaSessionStub;->J0(Landroidx/media3/session/IMediaController;IF)V

    return v1

    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Landroidx/media3/session/IMediaSession$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/session/MediaSessionStub;->j1(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return v1

    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaSessionStub;->x1(Landroidx/media3/session/IMediaController;I)V

    return v1

    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaSessionStub;->p(Landroidx/media3/session/IMediaController;I)V

    return v1

    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaSessionStub;->i2(Landroidx/media3/session/IMediaController;I)V

    return v1

    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v2, p0

    check-cast v2, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/session/MediaSessionStub;->l1(Landroidx/media3/session/IMediaController;IIII)V

    return v1

    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, p4, p2}, Landroidx/media3/session/MediaSessionStub;->H0(Landroidx/media3/session/IMediaController;III)V

    return v1

    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaSessionStub;->y(Landroidx/media3/session/IMediaController;I)V

    return v1

    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, p4, p2}, Landroidx/media3/session/MediaSessionStub;->M1(Landroidx/media3/session/IMediaController;III)V

    return v1

    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/session/MediaSessionStub;->y0(Landroidx/media3/session/IMediaController;II)V

    return v1

    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_21

    move v3, v1

    :cond_21
    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, v3}, Landroidx/media3/session/MediaSessionStub;->P(Landroidx/media3/session/IMediaController;IZ)V

    return v1

    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/session/MediaSessionStub;->a1(Landroidx/media3/session/IMediaController;II)V

    return v1

    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/media3/session/IMediaSession$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Landroid/os/Bundle;

    invoke-static {p2, p1}, Landroidx/media3/session/IMediaSession$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/os/Bundle;

    move-object v2, p0

    check-cast v2, Landroidx/media3/session/MediaSessionStub;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/session/MediaSessionStub;->X1(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Landroid/os/Bundle;Z)V

    return v1

    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Landroidx/media3/session/IMediaSession$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/session/MediaSessionStub;->k0(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return v1

    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Landroidx/media3/session/IMediaSession$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/session/MediaSessionStub;->G0(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return v1

    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_22

    move v3, v1

    :cond_22
    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, v3}, Landroidx/media3/session/MediaSessionStub;->j2(Landroidx/media3/session/IMediaController;IZ)V

    return v1

    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    move-object v2, p0

    check-cast v2, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual/range {v2 .. v8}, Landroidx/media3/session/MediaSessionStub;->A2(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;IJ)V

    return v1

    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_23

    move v3, v1

    :cond_23
    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, p4, v3}, Landroidx/media3/session/MediaSessionStub;->V(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;Z)V

    return v1

    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, p2, v1}, Landroidx/media3/session/MediaSessionStub;->V(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;Z)V

    return v1

    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Landroidx/media3/session/IMediaSession$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_24

    move v3, v1

    :cond_24
    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, p4, v3}, Landroidx/media3/session/MediaSessionStub;->T1(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V

    return v1

    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/media3/session/IMediaSession$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v2, p0

    check-cast v2, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/session/MediaSessionStub;->x0(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;J)V

    return v1

    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Landroidx/media3/session/IMediaSession$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, p2, v1}, Landroidx/media3/session/MediaSessionStub;->T1(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V

    return v1

    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_25

    move v3, v1

    :cond_25
    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, v3}, Landroidx/media3/session/MediaSessionStub;->U0(Landroidx/media3/session/IMediaController;IZ)V

    return v1

    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaSessionStub;->u2(Landroidx/media3/session/IMediaController;I)V

    return v1

    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaSessionStub;->o(Landroidx/media3/session/IMediaController;I)V

    return v1

    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/session/MediaSessionStub;->T(Landroidx/media3/session/IMediaController;II)V

    return v1

    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/session/MediaSessionStub;->F0(Landroidx/media3/session/IMediaController;IF)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xbba
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfa1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

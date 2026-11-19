.class public abstract Landroidx/media3/session/IMediaController$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/IMediaController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/IMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/IMediaController$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "androidx.media3.session.IMediaController"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static E2(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "androidx.media3.session.IMediaController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroidx/media3/session/IMediaController;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/media3/session/IMediaController;

    return-object v0

    :cond_1
    new-instance v0, Landroidx/media3/session/IMediaController$Stub$Proxy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Landroidx/media3/session/IMediaController$Stub$Proxy;->a:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    const-string v0, "androidx.media3.session.IMediaController"

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
    const/16 v0, 0xfa1

    const/4 v2, 0x3

    const-string v3, "Ignoring malformed Bundle for LibraryParams"

    if-eq p1, v0, :cond_11

    const/16 v0, 0xfa2

    if-eq p1, v0, :cond_d

    const-string v0, "Ignoring malformed Bundle for CommandButton"

    const/4 v3, -0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Landroidx/media3/session/MediaControllerStub;

    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/session/MediaControllerStub;->g(III)V

    return v1

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Landroidx/media3/session/IMediaController$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    invoke-static {p2, p3}, Landroidx/media3/session/IMediaController$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {p2, p3}, Landroidx/media3/session/IMediaController$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, Landroidx/media3/session/MediaControllerStub;

    if-eqz p4, :cond_3

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p4}, Landroidx/media3/session/SessionCommand;->a(Landroid/os/Bundle;)Landroidx/media3/session/SessionCommand;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p4, Landroidx/media3/session/n0;

    invoke-direct {p4, p1, p3, v0, p2}, Landroidx/media3/session/n0;-><init>(ILandroidx/media3/session/SessionCommand;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {p0, p4}, Landroidx/media3/session/MediaControllerStub;->F2(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    goto/16 :goto_5

    :catch_0
    move-exception p0

    const-string p1, "Ignoring malformed Bundle for SessionCommand"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_3
    :goto_0
    const-string p0, "Ignoring custom command progress update with null args."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    check-cast p0, Landroidx/media3/session/MediaControllerStub;

    if-nez p2, :cond_4

    goto/16 :goto_5

    :cond_4
    iget p3, p0, Landroidx/media3/session/MediaControllerStub;->b:I

    if-ne p3, v3, :cond_5

    goto/16 :goto_5

    :cond_5
    :try_start_1
    sget-object p3, Lcom/google/common/collect/ImmutableList;->c:Lcom/google/common/collect/UnmodifiableListIterator;

    new-instance p3, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {p3}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    move p4, v4

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p4, v2, :cond_6

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p0, Landroidx/media3/session/MediaControllerStub;->b:I

    invoke-static {v3, v2}, Landroidx/media3/session/CommandButton;->i(ILandroid/os/Bundle;)Landroidx/media3/session/CommandButton;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance p3, Landroidx/media3/session/m0;

    invoke-direct {p3, p1, p2, v4}, Landroidx/media3/session/m0;-><init>(ILjava/util/List;I)V

    invoke-virtual {p0, p3}, Landroidx/media3/session/MediaControllerStub;->F2(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    goto/16 :goto_5

    :catch_1
    move-exception p0

    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Landroidx/media3/session/IMediaController$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, Landroidx/media3/session/MediaControllerStub;

    :try_start_2
    invoke-static {p2}, Landroidx/media3/session/SessionError;->a(Landroid/os/Bundle;)Landroidx/media3/session/SessionError;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    new-instance p3, Landroidx/media3/session/q0;

    invoke-direct {p3, p1, p2}, Landroidx/media3/session/q0;-><init>(ILandroidx/media3/session/SessionError;)V

    invoke-virtual {p0, p3}, Landroidx/media3/session/MediaControllerStub;->F2(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    goto/16 :goto_5

    :catch_2
    move-exception p0

    const-string p1, "Ignoring malformed Bundle for SessionError"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Landroidx/media3/session/IMediaController$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    check-cast p0, Landroidx/media3/session/MediaControllerStub;

    new-instance p3, Landroidx/media3/session/o0;

    invoke-direct {p3, p1, p2}, Landroidx/media3/session/o0;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p3}, Landroidx/media3/session/MediaControllerStub;->F2(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    return v1

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Landroidx/media3/session/IMediaController$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    invoke-static {p2, p3}, Landroidx/media3/session/IMediaController$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, Landroidx/media3/session/MediaControllerStub;

    invoke-virtual {p0, p1, p4, p2}, Landroidx/media3/session/MediaControllerStub;->H1(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return v1

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/media3/session/IMediaController$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    check-cast p0, Landroidx/media3/session/MediaControllerStub;

    invoke-static {p1}, Landroidx/media3/common/util/Util;->p(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_7

    const-string p0, "Ignoring null Bundle for extras"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return v1

    :cond_7
    new-instance p2, Landroidx/media3/session/o0;

    invoke-direct {p2, p1, v2}, Landroidx/media3/session/o0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p2}, Landroidx/media3/session/MediaControllerStub;->F2(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    return v1

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    check-cast p0, Landroidx/media3/session/MediaControllerStub;

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaControllerStub;->f(I)V

    return v1

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Landroidx/media3/session/IMediaController$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    invoke-static {p2, p1}, Landroidx/media3/session/IMediaController$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    check-cast p0, Landroidx/media3/session/MediaControllerStub;

    if-eqz p3, :cond_15

    if-nez p1, :cond_8

    goto/16 :goto_5

    :cond_8
    :try_start_3
    invoke-static {p3}, Landroidx/media3/session/SessionCommands;->a(Landroid/os/Bundle;)Landroidx/media3/session/SessionCommands;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    invoke-static {p1}, Landroidx/media3/common/Player$Commands;->b(Landroid/os/Bundle;)Landroidx/media3/common/Player$Commands;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    new-instance p3, Landroidx/media3/session/s;

    const/4 p4, 0x6

    invoke-direct {p3, p2, p1, p4}, Landroidx/media3/session/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, p3}, Landroidx/media3/session/MediaControllerStub;->F2(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    goto/16 :goto_5

    :catch_3
    move-exception p0

    const-string p1, "Ignoring malformed Bundle for Commands"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :catch_4
    move-exception p0

    const-string p1, "Ignoring malformed Bundle for SessionCommands"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Landroidx/media3/session/IMediaController$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, Landroidx/media3/session/MediaControllerStub;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaControllerStub;->w1(ILandroid/os/Bundle;)V

    return v1

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Landroidx/media3/session/IMediaController$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, Landroidx/media3/session/MediaControllerStub;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaControllerStub;->A1(ILandroid/os/Bundle;)V

    return v1

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Landroidx/media3/session/IMediaController$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_9

    move v4, v1

    :cond_9
    check-cast p0, Landroidx/media3/session/MediaControllerStub;

    invoke-virtual {p0, p1, p3, v4}, Landroidx/media3/session/MediaControllerStub;->v2(ILandroid/os/Bundle;Z)V

    return v1

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    check-cast p0, Landroidx/media3/session/MediaControllerStub;

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerStub;->e()V

    return v1

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Landroidx/media3/session/IMediaController$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    invoke-static {p2, p3}, Landroidx/media3/session/IMediaController$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, Landroidx/media3/session/MediaControllerStub;

    invoke-virtual {p0, p1, p4, p2}, Landroidx/media3/session/MediaControllerStub;->C1(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return v1

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    check-cast p0, Landroidx/media3/session/MediaControllerStub;

    if-nez p2, :cond_a

    goto/16 :goto_5

    :cond_a
    iget p3, p0, Landroidx/media3/session/MediaControllerStub;->b:I

    if-ne p3, v3, :cond_b

    goto/16 :goto_5

    :cond_b
    :try_start_5
    sget-object p3, Lcom/google/common/collect/ImmutableList;->c:Lcom/google/common/collect/UnmodifiableListIterator;

    new-instance p3, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {p3}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    if-ge v4, p4, :cond_c

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, Landroidx/media3/session/MediaControllerStub;->b:I

    invoke-static {v2, p4}, Landroidx/media3/session/CommandButton;->i(ILandroid/os/Bundle;)Landroidx/media3/session/CommandButton;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_c
    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object p2
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    new-instance p3, Landroidx/media3/session/m0;

    invoke-direct {p3, p1, p2, v1}, Landroidx/media3/session/m0;-><init>(ILjava/util/List;I)V

    invoke-virtual {p0, p3}, Landroidx/media3/session/MediaControllerStub;->F2(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    goto/16 :goto_5

    :catch_5
    move-exception p0

    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Landroidx/media3/session/IMediaController$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, Landroidx/media3/session/MediaControllerStub;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaControllerStub;->a0(ILandroid/os/Bundle;)V

    return v1

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Landroidx/media3/session/IMediaController$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, Landroidx/media3/session/MediaControllerStub;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaControllerStub;->O0(ILandroid/os/Bundle;)V

    return v1

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Landroidx/media3/session/IMediaController$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, Landroidx/media3/session/MediaControllerStub;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaControllerStub;->E(ILandroid/os/Bundle;)V

    return v1

    :cond_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Landroidx/media3/session/IMediaController$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, Landroidx/media3/session/MediaControllerStub;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p0, "onSearchResultChanged(): Ignoring empty query"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    if-gez p3, :cond_f

    const-string p0, "onSearchResultChanged(): Ignoring negative itemCount: "

    invoke-static {p3, p0}, La;->u(ILjava/lang/String;)V

    goto :goto_5

    :cond_f
    if-nez p2, :cond_10

    goto :goto_3

    :cond_10
    :try_start_6
    invoke-static {p2}, Landroidx/media3/session/MediaLibraryService$LibraryParams;->a(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_3
    new-instance p1, Landroidx/media3/session/q0;

    invoke-direct {p1, v2}, Landroidx/media3/session/q0;-><init>(I)V

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaControllerStub;->F2(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    goto :goto_5

    :catch_6
    move-exception p0

    invoke-static {v3, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Landroidx/media3/session/IMediaController$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    check-cast p0, Landroidx/media3/session/MediaControllerStub;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p0, "onChildrenChanged(): Ignoring empty parentId"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_5

    :cond_12
    if-gez p3, :cond_13

    const-string p0, "onChildrenChanged(): Ignoring negative itemCount: "

    invoke-static {p3, p0}, La;->u(ILjava/lang/String;)V

    goto :goto_5

    :cond_13
    if-nez p2, :cond_14

    goto :goto_4

    :cond_14
    :try_start_7
    invoke-static {p2}, Landroidx/media3/session/MediaLibraryService$LibraryParams;->a(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_7

    :goto_4
    new-instance p1, Landroidx/media3/session/q0;

    invoke-direct {p1, v2}, Landroidx/media3/session/q0;-><init>(I)V

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaControllerStub;->F2(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    goto :goto_5

    :catch_7
    move-exception p0

    invoke-static {v3, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    :goto_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xbb9
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
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

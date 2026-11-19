.class public interface abstract Lnet/rtccloud/sdk/AcdModule$Native;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/AcdModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# static fields
.field public static final JNI:Lnet/rtccloud/sdk/AcdModule$Native;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/rtccloud/sdk/AcdModule$Native$1;

    invoke-direct {v0}, Lnet/rtccloud/sdk/AcdModule$Native$1;-><init>()V

    sput-object v0, Lnet/rtccloud/sdk/AcdModule$Native;->JNI:Lnet/rtccloud/sdk/AcdModule$Native;

    return-void
.end method


# virtual methods
.method public abstract acceptRequest(Ljava/lang/String;)Z
.end method

.method public abstract cancel()Z
.end method

.method public abstract declineRequest(Ljava/lang/String;)Z
.end method

.method public abstract getSingleUser(JJ)Z
.end method

.method public abstract getUserList(JJ)Z
.end method

.method public abstract getWaitingList()Z
.end method

.method public abstract request(JJ)Z
.end method

.method public abstract setPresence(J)Z
.end method

.method public abstract setPriority(J)Z
.end method

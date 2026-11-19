.class public interface abstract Lnet/rtccloud/sdk/RosterModule$Native;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/RosterModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# static fields
.field public static final JNI:Lnet/rtccloud/sdk/RosterModule$Native;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/rtccloud/sdk/RosterModule$Native$1;

    invoke-direct {v0}, Lnet/rtccloud/sdk/RosterModule$Native$1;-><init>()V

    sput-object v0, Lnet/rtccloud/sdk/RosterModule$Native;->JNI:Lnet/rtccloud/sdk/RosterModule$Native;

    return-void
.end method


# virtual methods
.method public abstract add([Ljava/lang/String;)Z
.end method

.method public abstract clear()Z
.end method

.method public abstract remove([Ljava/lang/String;)Z
.end method

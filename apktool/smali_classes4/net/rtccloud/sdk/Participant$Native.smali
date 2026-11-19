.class interface abstract Lnet/rtccloud/sdk/Participant$Native;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/Participant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# static fields
.field public static final JNI:Lnet/rtccloud/sdk/Participant$Native;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/rtccloud/sdk/Participant$Native$1;

    invoke-direct {v0}, Lnet/rtccloud/sdk/Participant$Native$1;-><init>()V

    sput-object v0, Lnet/rtccloud/sdk/Participant$Native;->JNI:Lnet/rtccloud/sdk/Participant$Native;

    return-void
.end method


# virtual methods
.method public abstract control(Lnet/rtccloud/sdk/Participant$Control;I)V
.end method

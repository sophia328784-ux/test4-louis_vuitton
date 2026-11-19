.class public final Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/conditionalinfo/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/conditionalinfo/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final guid:Ljava/lang/String;

.field public final info:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/conditionalinfo/a$a;->guid:Ljava/lang/String;

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;->b:Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/conditionalinfo/a$a;->info:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    return-void
.end method

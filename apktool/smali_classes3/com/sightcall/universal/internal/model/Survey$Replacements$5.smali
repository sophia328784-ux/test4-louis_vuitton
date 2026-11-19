.class final enum Lcom/sightcall/universal/internal/model/Survey$Replacements$5;
.super Lcom/sightcall/universal/internal/model/Survey$Replacements;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/model/Survey$Replacements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 3

    const/4 v0, 0x4

    const-string v1, "${device_type}"

    const-string v2, "DEVICE_TYPE"

    invoke-direct {p0, v2, v0, v1}, Lcom/sightcall/universal/internal/model/Survey$Replacements$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sightcall/universal/internal/model/Survey$Replacements;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public value(Landroid/content/Context;Lcom/sightcall/universal/internal/model/Survey;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/sightcall/pratik/extensions/ContextExtensionsKt;->deviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

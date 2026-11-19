.class public final enum Lcom/perfectcorp/perfectlib/PluginPosition;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/PluginPosition;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BACK:Lcom/perfectcorp/perfectlib/PluginPosition;

.field public static final enum FRONT:Lcom/perfectcorp/perfectlib/PluginPosition;

.field private static final synthetic a:[Lcom/perfectcorp/perfectlib/PluginPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/perfectcorp/perfectlib/PluginPosition;

    const-string v1, "FRONT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/PluginPosition;->FRONT:Lcom/perfectcorp/perfectlib/PluginPosition;

    new-instance v1, Lcom/perfectcorp/perfectlib/PluginPosition;

    const-string v2, "BACK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perfectcorp/perfectlib/PluginPosition;->BACK:Lcom/perfectcorp/perfectlib/PluginPosition;

    filled-new-array {v0, v1}, [Lcom/perfectcorp/perfectlib/PluginPosition;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/PluginPosition;->a:[Lcom/perfectcorp/perfectlib/PluginPosition;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/PluginPosition;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/PluginPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/PluginPosition;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/PluginPosition;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/PluginPosition;->a:[Lcom/perfectcorp/perfectlib/PluginPosition;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/PluginPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/PluginPosition;

    return-object v0
.end method

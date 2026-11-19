.class public final enum Lcom/perfectcorp/perfectlib/Configuration$ImageSource;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/Configuration$ImageSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FILE:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

.field public static final enum URL:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

.field private static final synthetic a:[Lcom/perfectcorp/perfectlib/Configuration$ImageSource;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    const-string v1, "FILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;->FILE:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    new-instance v1, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    const-string v2, "URL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;->URL:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    filled-new-array {v0, v1}, [Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;->a:[Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/Configuration$ImageSource;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/Configuration$ImageSource;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;->a:[Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/Configuration$ImageSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    return-object v0
.end method

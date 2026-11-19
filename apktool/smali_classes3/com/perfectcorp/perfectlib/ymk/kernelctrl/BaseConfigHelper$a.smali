.class public final enum Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;

.field public static final enum b:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;

.field public static final enum c:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;


# instance fields
.field final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;->a:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;

    const-string v1, "EXISTENT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;->b:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;

    const-string v1, "NONEXISTENT"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;->c:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper$a;->d:Z

    return-void
.end method

.class public final enum Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/clflurry/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

.field public static final enum b:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

    const/4 v1, 0x0

    const-string v2, "livecam"

    const-string v3, "LIVE_CAM"

    invoke-direct {v0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;->a:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

    const/4 v1, 0x1

    const-string v2, "photo_editing"

    const-string v3, "PHOTO_EDITING"

    invoke-direct {v0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;->b:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 1

    const-string v0, "page"

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;->c:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

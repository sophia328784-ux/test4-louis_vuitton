.class abstract enum Lcom/perfectcorp/perfectlib/ymk/clflurry/a$a;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/perfectcorp/uma/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ymk/clflurry/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/ymk/clflurry/a$a;",
        ">;",
        "Lcom/perfectcorp/uma/m;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/perfectcorp/perfectlib/ymk/clflurry/a$a;

.field public static final enum b:Lcom/perfectcorp/perfectlib/ymk/clflurry/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/d;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/d;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/a$a;->a:Lcom/perfectcorp/perfectlib/ymk/clflurry/a$a;

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/e;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/e;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/a$a;->b:Lcom/perfectcorp/perfectlib/ymk/clflurry/a$a;

    return-void
.end method

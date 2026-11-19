.class abstract Lcom/perfectcorp/common/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/common/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/common/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/common/a;

    invoke-direct {v0}, Lcom/perfectcorp/common/a;-><init>()V

    sput-object v0, Lcom/perfectcorp/common/a$a;->a:Lcom/perfectcorp/common/a;

    return-void
.end method

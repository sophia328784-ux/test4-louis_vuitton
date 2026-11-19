.class public final Lcom/perfectcorp/perfectlib/ph/utility/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/utility/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:F

.field public h:Z

.field public i:F

.field public j:F

.field public k:Z

.field public l:Lcom/perfectcorp/perfectlib/RingPosition;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->c:Ljava/lang/String;

    sget-object v0, Lcom/perfectcorp/perfectlib/RingPosition;->RING_FINGER:Lcom/perfectcorp/perfectlib/RingPosition;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->l:Lcom/perfectcorp/perfectlib/RingPosition;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "obbPath can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->f:Ljava/lang/String;

    return-void
.end method

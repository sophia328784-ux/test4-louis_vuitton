.class public final enum Lcom/perfectcorp/perfectlib/ymk/utility/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/ymk/utility/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/perfectcorp/perfectlib/ymk/utility/a;

.field public static final enum b:Lcom/perfectcorp/perfectlib/ymk/utility/a;

.field public static final enum c:Lcom/perfectcorp/perfectlib/ymk/utility/a;

.field public static final enum d:Lcom/perfectcorp/perfectlib/ymk/utility/a;

.field public static final enum e:Lcom/perfectcorp/perfectlib/ymk/utility/a;


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/utility/a;

    const/4 v1, 0x0

    const-string v2, "thumb"

    const-string v3, "THUMB_FINGER"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/perfectcorp/perfectlib/ymk/utility/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/utility/a;->a:Lcom/perfectcorp/perfectlib/ymk/utility/a;

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/utility/a;

    const/4 v1, 0x1

    const-string v2, "index"

    const-string v3, "FOREFINGER"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/perfectcorp/perfectlib/ymk/utility/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/utility/a;->b:Lcom/perfectcorp/perfectlib/ymk/utility/a;

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/utility/a;

    const/4 v1, 0x2

    const-string v2, "middle"

    const-string v3, "MIDDLE_FINGER"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/perfectcorp/perfectlib/ymk/utility/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/utility/a;->c:Lcom/perfectcorp/perfectlib/ymk/utility/a;

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/utility/a;

    const/4 v1, 0x3

    const-string v2, "ring"

    const-string v3, "RING_FINGER"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/perfectcorp/perfectlib/ymk/utility/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/utility/a;->d:Lcom/perfectcorp/perfectlib/ymk/utility/a;

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/utility/a;

    const/4 v1, 0x4

    const-string v2, "pinky"

    const-string v3, "LITTLE_FINGER"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/perfectcorp/perfectlib/ymk/utility/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/utility/a;->e:Lcom/perfectcorp/perfectlib/ymk/utility/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ymk/utility/a;->f:Ljava/lang/String;

    iput p4, p0, Lcom/perfectcorp/perfectlib/ymk/utility/a;->g:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/utility/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/perfectlib/ymk/utility/a;->g:I

    return p0
.end method

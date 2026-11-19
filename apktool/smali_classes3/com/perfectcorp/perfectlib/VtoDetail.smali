.class public abstract Lcom/perfectcorp/perfectlib/VtoDetail;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/VtoDetail$PatternEarringsOrNail;,
        Lcom/perfectcorp/perfectlib/VtoDetail$PatternMajor;,
        Lcom/perfectcorp/perfectlib/VtoDetail$PaletteMajor;
    }
.end annotation


# static fields
.field public static final c:Lcom/perfectcorp/perfectlib/VtoDetail;


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/ProductInfo;

.field public final b:Lcom/perfectcorp/perfectlib/SkuInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/VtoDetail$1;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/VtoDetail;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/VtoDetail;->c:Lcom/perfectcorp/perfectlib/VtoDetail;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/VtoDetail;->a:Lcom/perfectcorp/perfectlib/ProductInfo;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/VtoDetail;->b:Lcom/perfectcorp/perfectlib/SkuInfo;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/VtoDetail;->a:Lcom/perfectcorp/perfectlib/ProductInfo;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/VtoDetail;->b:Lcom/perfectcorp/perfectlib/SkuInfo;

    return-void
.end method


# virtual methods
.method public abstract getPalettes(Lcom/perfectcorp/perfectlib/VtoObject$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/perfectlib/VtoObject$Callback<",
            "Lcom/perfectcorp/perfectlib/VtoPalette;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getPatterns(Lcom/perfectcorp/perfectlib/VtoObject$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/perfectlib/VtoObject$Callback<",
            "Lcom/perfectcorp/perfectlib/VtoPattern;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getWearingStyles(Lcom/perfectcorp/perfectlib/VtoObject$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/perfectlib/VtoObject$Callback<",
            "Lcom/perfectcorp/perfectlib/VtoWearingStyle;",
            ">;)V"
        }
    .end annotation
.end method

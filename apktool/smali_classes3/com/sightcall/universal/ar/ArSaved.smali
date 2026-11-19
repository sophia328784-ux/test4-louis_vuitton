.class public final Lcom/sightcall/universal/ar/ArSaved;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "id"
    .end annotation
.end field

.field private final saved:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "success"
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sightcall/universal/ar/ArSaved;->saved:Z

    iput-object p2, p0, Lcom/sightcall/universal/ar/ArSaved;->id:Ljava/lang/String;

    return-void
.end method

.method public static failure()Lcom/sightcall/universal/ar/ArSaved;
    .locals 3

    new-instance v0, Lcom/sightcall/universal/ar/ArSaved;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/ar/ArSaved;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public static success(Ljava/lang/String;)Lcom/sightcall/universal/ar/ArSaved;
    .locals 2

    new-instance v0, Lcom/sightcall/universal/ar/ArSaved;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/sightcall/universal/ar/ArSaved;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

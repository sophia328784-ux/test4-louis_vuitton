.class public Lcom/perfectcorp/common/utility/BasicPreferences;
.super Lcom/perfectcorp/common/utility/j;


# instance fields
.field public final n:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/perfectcorp/common/utility/BasicPreferences;->n:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/perfectcorp/common/utility/a;->g:Lcom/perfectcorp/thirdparty/com/google/common/cache/LoadingCache;

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    sget-object v0, Lcom/perfectcorp/common/utility/a;->g:Lcom/perfectcorp/thirdparty/com/google/common/cache/LoadingCache;

    invoke-interface {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/LoadingCache;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/perfectcorp/common/utility/BasicPreferences;->n:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/common/utility/BasicPreferences;->n:Landroid/content/SharedPreferences;

    return-object p0
.end method

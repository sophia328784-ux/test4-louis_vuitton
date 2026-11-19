.class public final Lcom/perfectcorp/common/cache/PreferencesCache$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/common/cache/PreferencesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/common/utility/BasicPreferences;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/utility/BasicPreferences;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/common/cache/PreferencesCache$Builder;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    const-string v0, "preferences can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/common/cache/PreferencesCache$Builder;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    const-string p1, "primaryKey can\'t be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/common/cache/PreferencesCache$Builder;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Lcom/perfectcorp/common/cache/PreferencesCache$Timestamp;

    iget-object v1, p0, Lcom/perfectcorp/common/cache/PreferencesCache$Builder;->b:Ljava/lang/String;

    const-string v2, "_TIMESTAMP"

    invoke-static {v1, v2}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perfectcorp/common/cache/PreferencesCache$Builder;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-direct {v0, v2, v1}, Lcom/perfectcorp/common/cache/PreferencesCache$Component;-><init>(Lcom/perfectcorp/common/utility/BasicPreferences;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/common/cache/PreferencesCache$Builder;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    return-void
.end method

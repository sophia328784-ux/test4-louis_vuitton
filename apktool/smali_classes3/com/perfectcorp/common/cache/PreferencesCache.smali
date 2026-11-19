.class public final Lcom/perfectcorp/common/cache/PreferencesCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/common/cache/PreferencesCache$Timestamp;,
        Lcom/perfectcorp/common/cache/PreferencesCache$Component;,
        Lcom/perfectcorp/common/cache/PreferencesCache$Builder;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/common/utility/BasicPreferences;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/cache/PreferencesCache$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/common/cache/PreferencesCache$Builder;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    iput-object v0, p0, Lcom/perfectcorp/common/cache/PreferencesCache;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    iget-object v0, p1, Lcom/perfectcorp/common/cache/PreferencesCache$Builder;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/common/cache/PreferencesCache;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/perfectcorp/common/cache/PreferencesCache$Builder;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/common/cache/PreferencesCache;->c:Ljava/util/List;

    return-void
.end method

.class public abstract Lcom/perfectcorp/common/cache/PreferencesCache$Component;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/common/cache/PreferencesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Component"
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/common/utility/BasicPreferences;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/utility/BasicPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/common/cache/PreferencesCache$Component;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    iput-object p2, p0, Lcom/perfectcorp/common/cache/PreferencesCache$Component;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

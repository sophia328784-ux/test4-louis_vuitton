.class public abstract Lcom/perfectcorp/perfectlib/hc/preferences/LookHandlerPreferences;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/perfectcorp/common/utility/BasicPreferences;

.field public static final b:Lcom/perfectcorp/common/utility/BasicPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/perfectcorp/common/utility/BasicPreferences;

    const-string v1, "LookHandlerStatusPreferences"

    invoke-static {v1}, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->a(Ljava/lang/String;)Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/common/utility/BasicPreferences;-><init>(Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/preferences/LookHandlerPreferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    new-instance v0, Lcom/perfectcorp/common/utility/BasicPreferences;

    const-string v1, "LookHandlerLookModifiedDatePreferences"

    invoke-static {v1}, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->a(Ljava/lang/String;)Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/common/utility/BasicPreferences;-><init>(Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/preferences/LookHandlerPreferences;->b:Lcom/perfectcorp/common/utility/BasicPreferences;

    return-void
.end method

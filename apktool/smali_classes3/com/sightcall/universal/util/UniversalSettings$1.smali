.class Lcom/sightcall/universal/util/UniversalSettings$1;
.super Lcom/sightcall/universal/util/LazyEnumPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/util/UniversalSettings;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/universal/util/LazyEnumPreference<",
        "Lcom/sightcall/universal/api/Environment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/util/UniversalSettings;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/util/UniversalSettings;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Lcom/sightcall/universal/api/Environment;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/util/UniversalSettings$1;->this$0:Lcom/sightcall/universal/util/UniversalSettings;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sightcall/universal/util/LazyEnumPreference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)V

    return-void
.end method


# virtual methods
.method public set(Lcom/sightcall/universal/api/Environment;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sightcall/universal/api/Environment;->PROD:Lcom/sightcall/universal/api/Environment;

    :goto_0
    invoke-super {p0, p1}, Lcom/sightcall/universal/util/LazyPreference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lcom/sightcall/universal/api/Environment;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/util/UniversalSettings$1;->set(Lcom/sightcall/universal/api/Environment;)V

    return-void
.end method

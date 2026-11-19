.class Lcom/sightcall/universal/util/UniversalSettings$3;
.super Lcom/sightcall/universal/util/LazyBooleanPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/util/UniversalSettings;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/util/UniversalSettings;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/util/UniversalSettings;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/util/UniversalSettings$3;->this$0:Lcom/sightcall/universal/util/UniversalSettings;

    invoke-direct {p0, p2, p3, p4}, Lcom/sightcall/universal/util/LazyBooleanPreference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public set(Ljava/lang/Boolean;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sightcall/universal/util/LazyPreference;->set(Ljava/lang/Object;)V

    invoke-static {}, Lcom/sightcall/universal/api/Apis;->loggingInterceptor()Lcom/sightcall/universal/api/HttpLoggingInterceptor;

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :cond_0
    sget-object p1, Lcom/sightcall/universal/api/HttpLoggingInterceptor$Level;->BODY:Lcom/sightcall/universal/api/HttpLoggingInterceptor$Level;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/api/HttpLoggingInterceptor;->setLevel(Lcom/sightcall/universal/api/HttpLoggingInterceptor$Level;)Lcom/sightcall/universal/api/HttpLoggingInterceptor;

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/util/UniversalSettings$3;->set(Ljava/lang/Boolean;)V

    return-void
.end method

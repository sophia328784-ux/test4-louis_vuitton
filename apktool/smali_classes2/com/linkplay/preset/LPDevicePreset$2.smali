.class Lcom/linkplay/preset/LPDevicePreset$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/IWiimuActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/preset/LPDevicePreset;->setSpotifyPreset(ILjava/lang/String;Lcom/linkplay/preset/LPPresetListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/preset/LPDevicePreset;

.field final synthetic val$keyMappingQueue:Ljava/lang/String;

.field final synthetic val$listener:Lcom/linkplay/preset/LPPresetListener;


# direct methods
.method public constructor <init>(Lcom/linkplay/preset/LPDevicePreset;Lcom/linkplay/preset/LPPresetListener;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/preset/LPDevicePreset$2;->this$0:Lcom/linkplay/preset/LPDevicePreset;

    iput-object p2, p0, Lcom/linkplay/preset/LPDevicePreset$2;->val$listener:Lcom/linkplay/preset/LPPresetListener;

    iput-object p3, p0, Lcom/linkplay/preset/LPDevicePreset$2;->val$keyMappingQueue:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/linkplay/preset/LPDevicePreset$2;->val$listener:Lcom/linkplay/preset/LPPresetListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/linkplay/preset/LPPresetListener;->onFail(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public success(Ljava/util/Map;)V
    .locals 8

    if-eqz p1, :cond_2

    const-string v0, "Result"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<Key2>"

    iget-object v2, p0, Lcom/linkplay/preset/LPDevicePreset$2;->val$keyMappingQueue:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/linkplay/preset/LPDevicePreset$2;->val$keyMappingQueue:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</Key2>"

    iget-object v3, p0, Lcom/linkplay/preset/LPDevicePreset$2;->val$keyMappingQueue:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/linkplay/preset/LPDevicePreset$2;->val$keyMappingQueue:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x6

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<Name>"

    const-string v5, "</Name>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v2, v6, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object p1, p0, Lcom/linkplay/preset/LPDevicePreset$2;->val$keyMappingQueue:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lcom/linkplay/preset/LPDevicePreset$2;->this$0:Lcom/linkplay/preset/LPDevicePreset;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/preset/LPDevicePreset$2;->val$listener:Lcom/linkplay/preset/LPPresetListener;

    invoke-static {p1, v0, v1}, Lcom/linkplay/preset/LPDevicePreset;->a(Lcom/linkplay/preset/LPDevicePreset;Ljava/lang/String;Lcom/linkplay/preset/LPPresetListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    iget-object p0, p0, Lcom/linkplay/preset/LPDevicePreset$2;->val$listener:Lcom/linkplay/preset/LPPresetListener;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lcom/linkplay/preset/LPPresetListener;->onFail(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/linkplay/preset/LPDevicePreset$2;->val$listener:Lcom/linkplay/preset/LPPresetListener;

    if-eqz p0, :cond_3

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Preset Spotify failed."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/linkplay/preset/LPPresetListener;->onFail(Ljava/lang/Exception;)V

    :cond_3
    :goto_3
    return-void
.end method

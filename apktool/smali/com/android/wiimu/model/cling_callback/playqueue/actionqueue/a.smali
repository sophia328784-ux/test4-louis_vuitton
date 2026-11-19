.class public Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "ListRoot"

.field static final b:Ljava/lang/String; = "<ListRoot>"

.field static final c:Ljava/lang/String; = "</ListRoot>"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/b;
    .locals 11

    new-instance v0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/b;

    invoke-direct {v0}, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/b;-><init>()V

    const-string v1, "<TotalQueue>(.*)</TotalQueue>\r?\n?<CurrentPlayList>\r?\n?<Name>(.*)</Name>\r?\n?</CurrentPlayList>"

    const/16 v2, 0x28

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/b;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v3, "<List[0-9]+>"

    const-string v5, "<ListRoot>"

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "</List[0-9]+>"

    const-string v5, "</ListRoot>"

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "^<PlayListInfo>(.*)</PlayListInfo>$"

    invoke-static {v3, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v6, v3

    const/4 v7, 0x2

    if-ge v6, v7, :cond_2

    goto/16 :goto_5

    :cond_2
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v3, v7

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v3, v7

    invoke-static {v9, v5, v8}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "<Source>iHeartRadio</Source>"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;

    invoke-direct {v9, v8}, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/d;->a()Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    move-result-object v9

    goto :goto_2

    :cond_3
    const-string v9, "<Source>SPOTIFY</Source>"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v9, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;

    invoke-direct {v9, v8}, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/d;->a()Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;

    move-result-object v9

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_7

    const-string v10, "<Name>(.*)</Name>"

    invoke-static {v10, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    :goto_3
    :try_start_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/b;->a:Ljava/lang/String;

    goto :goto_3

    :cond_5
    :goto_4
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/wiimu/model/cling_callback/playqueue/xml/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->Name:Ljava/lang/String;

    goto :goto_4

    :cond_6
    iget-object v8, v0, Lcom/android/wiimu/model/cling_callback/playqueue/actionqueue/b;->c:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_8
    :goto_5
    return-object v0
.end method

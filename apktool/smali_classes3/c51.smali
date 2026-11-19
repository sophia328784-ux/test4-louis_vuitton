.class public final synthetic Lc51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/sightcall/universal/ui/UniversalDisplayName;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Z

.field public final synthetic g:Lcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/sightcall/universal/ui/UniversalDisplayName;Ljava/lang/String;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;Ljava/util/List;ZLcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc51;->b:Lcom/sightcall/universal/ui/UniversalDisplayName;

    iput-object p2, p0, Lc51;->c:Ljava/lang/String;

    iput-object p3, p0, Lc51;->d:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;

    iput-object p4, p0, Lc51;->e:Ljava/util/List;

    iput-boolean p5, p0, Lc51;->f:Z

    iput-object p6, p0, Lc51;->g:Lcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-boolean v4, p0, Lc51;->f:Z

    iget-object v5, p0, Lc51;->g:Lcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;

    iget-object v0, p0, Lc51;->b:Lcom/sightcall/universal/ui/UniversalDisplayName;

    iget-object v1, p0, Lc51;->c:Ljava/lang/String;

    iget-object v2, p0, Lc51;->d:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;

    iget-object v3, p0, Lc51;->e:Ljava/util/List;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/sightcall/universal/ui/UniversalDisplayName;->b(Lcom/sightcall/universal/ui/UniversalDisplayName;Ljava/lang/String;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;Ljava/util/List;ZLcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;Landroid/view/View;)V

    return-void
.end method

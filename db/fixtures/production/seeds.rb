Conference.seed(
  {
    id: 1,
    name: "Cloud Operator Days Tokyo 2021",
    abbr: "codt2021",
    status: 0, # registered
    speaker_entry: 0,
    attendee_entry: 0,
    theme: "運用者に光を",
    copyright: '© Cloud Operator Days Tokyo 2021',
    privacy_policy: File.read(File.join(Rails.root, 'db/fixtures/production/privacy_policy.md')),
    coc: File.read(File.join(Rails.root, 'db/fixtures/production/coc.md')),
    about: <<'EOS'
    Cloud Operator Days Tokyo は、クラウドの運用者に焦点を当てた技術者向けの新しいテックイベントです。クラウドの運用者とは、クラウド基盤（IaaS、PaaS、CaaS、FaaS）を運用しているインフラエンジニアの方だけではなく、クラウド基盤上でアプリケーションを作成し、運用している人も含みます。オペレーションに関わる技術や悩み、解決策を発表、共有していくことで運用技術の発展やインフラ、アプリケーション運用に興味がある若手の教育、育成ができるイベントとして発展させていきたいと考えております。

    Cloud Native Telecom Operator Meetup は、5G時代にむけた通信事業者のネットワークインフラの進化について技術･標準化･オープンソース･アカデミックの観点から議論を行う会議です。5G時代にむけ通信事業者におけるネットワークインフラでは、ネットワーク仮想化 (NFV) 、エッジコンピューティング、クラウドネイティブ化、end-to-end (E2E) オーケストレーション、オープンソースの活用など大きく流れが変わってきております。CNTOMでは、通信事業者、通信機器メーカ、クラウド分野のオープンソース開発者を集め、今後のネットワークの進化にむけ技術や標準化およびユースケースから議論を行いたいと考えております。
EOS
  }
)

ConferenceDay.seed(
  {id: 1, date: "2021-08-27", start_time: "12:00", end_time: "20:00", conference_id: 1, internal: false},
)


Industry.seed(
  { id: 1,  conference_id: 1, name: "IT関連製造業" },
  { id: 2,  conference_id: 1, name: "電気機器製造業" },
  { id: 3,  conference_id: 1, name: "通信機器関連製造業" },
  { id: 4,  conference_id: 1, name: "電子部品/デバイス/電子回路製造業" },
  { id: 5,  conference_id: 1, name: "自動車/輸送用機器製造業" },
  { id: 6,  conference_id: 1, name: "産業用/事務用機器製造業" },
  { id: 7,  conference_id: 1, name: "食料品/飲料製造業" },
  { id: 8,  conference_id: 1, name: "医薬品/化学製品製造" },
  { id: 9,  conference_id: 1, name: "素材関連製造業" },
  { id: 10, conference_id: 1, name: "その他の製造業" },
  { id: 11, conference_id: 1, name: "ソフトウェアベンダー" },
  { id: 12, conference_id: 1, name: "受託開発/情報処理サービス" },
  { id: 13, conference_id: 1, name: "組み込み系ソフトウェア" },
  { id: 14, conference_id: 1, name: "データセンター事業者" },
  { id: 15, conference_id: 1, name: "クラウド系ベンダー" },
  { id: 16, conference_id: 1, name: "SaaS系ベンダー" },
  { id: 17, conference_id: 1, name: "Webサイト制作" },
  { id: 18, conference_id: 1, name: "Webマーケティング支援" },
  { id: 19, conference_id: 1, name: "通信事業者" },
  { id: 20, conference_id: 1, name: "インターネットサービスプロバイダ" },
  { id: 21, conference_id: 1, name: "その他の情報サービス業" },
  { id: 22, conference_id: 1, name: "発電事業者" },
  { id: 23, conference_id: 1, name: "一般送配電事業者" },
  { id: 24, conference_id: 1, name: "小売電気事業者" },
  { id: 25, conference_id: 1, name: "ガス/水道業" },
  { id: 26, conference_id: 1, name: "その他の公益事業関連" },
  { id: 27, conference_id: 1, name: "商社/販社/卸" },
  { id: 29, conference_id: 1, name: "小売/流通（IT関連製品外）" },
  { id: 30, conference_id: 1, name: "金融（銀行/証券/保険など）" },
  { id: 31, conference_id: 1, name: "運輸/郵便業" },
  { id: 32, conference_id: 1, name: "放送/出版/メディア" },
  { id: 33, conference_id: 1, name: "インターネット関連メディア" },
  { id: 34, conference_id: 1, name: "旅行/ホテル/レジャー業" },
  { id: 35, conference_id: 1, name: "商社/販社/卸" },
  { id: 36, conference_id: 1, name: "外食業" },
  { id: 37, conference_id: 1, name: "広告代理店/PR会社" },
  { id: 38, conference_id: 1, name: "印刷/DTP" },
  { id: 39, conference_id: 1, name: "広告制作/デザイン" },
  { id: 40, conference_id: 1, name: "専門職（弁護士/公認会計士/税理士など）" },
  { id: 41, conference_id: 1, name: "コンサルティング" },
  { id: 42, conference_id: 1, name: "その他のサービス業" },
  { id: 43, conference_id: 1, name: "映像/音楽産業" },
  { id: 44, conference_id: 1, name: "医療/福祉/病院" },
  { id: 45, conference_id: 1, name: "農林/水産/鉱業" },
  { id: 46, conference_id: 1, name: "建設業" },
  { id: 47, conference_id: 1, name: "住宅/不動産" },
  { id: 48, conference_id: 1, name: "政府/官公庁/団体" },
  { id: 49, conference_id: 1, name: "地方自治体" },
  { id: 50, conference_id: 1, name: "学校/教育機関" },
  { id: 51, conference_id: 1, name: "研究所（民間/公共）" },
  { id: 52, conference_id: 1, name: "自営業/独立事業者" },
  { id: 53, conference_id: 1, name: "学生" },
  { id: 54, conference_id: 1, name: "勤めていない" },
  { id: 55, conference_id: 1, name: "該当なし" }
)


## Add this item if needed
# FormItem.seed(
#   { id: 1, conference_id: 1, name: "xxxx"},
# )


Track.seed(
  { id: 1, number: 1, name: "大規模システム運用", conference_id: 1},
  { id: 2, number: 2, name: "運用苦労話（しくじり、トラシュー）", conference_id: 1},
  { id: 3, number: 3, name: "運用自動化（Dev/Ops、CI/CD）", conference_id: 1},
  { id: 4, number: 4, name: "社内基盤（情シス、開発環境）", conference_id: 1},
  { id: 5, number: 5, name: "CNTOM2021", conference_id: 1},
)

TalkCategory.seed(
  { id: 1,  conference_id: 1, name: "CI / CD"},
  { id: 2,  conference_id: 1, name: "Customizing / Extending"},
  { id: 3,  conference_id: 1, name: "IoT / Edge"},
  { id: 4,  conference_id: 1, name: "Microservices / Services Mesh"},
  { id: 5,  conference_id: 1, name: "ML / GPGPU / HPC"},
  { id: 6,  conference_id: 1, name: "Networking"},
  { id: 7,  conference_id: 1, name: "Operation / Monitoring / Logging"},
  { id: 8,  conference_id: 1, name: "Orchestration"},
  { id: 9,  conference_id: 1, name: "Runtime"},
  { id: 10, conference_id: 1, name: "Security"},
  { id: 11, conference_id: 1, name: "Serveless / FaaS"},
  { id: 12, conference_id: 1, name: "Storage / Database"},
  { id: 13, conference_id: 1, name: "Architecture Design"},
  { id: 14, conference_id: 1, name: "Hybrid Cloud / Multi Cloud"},
  { id: 15, conference_id: 1, name: "NFV / Edge"},
  { id: 16, conference_id: 1, name: "組織論"},
  { id: 17, conference_id: 1, name: "その他"},
  { id: 18, conference_id: 1, name: "Keynote"},
)

TalkDifficulty.seed(
  { id: 1, conference_id: 1, name: "初級者"},
  { id: 2, conference_id: 1, name: "中級者"},
  { id: 3, conference_id: 1, name: "上級者"},
  { id: 4, conference_id: 1, name: ""}
)

# TalkTime.seed(

# )

if ENV['REVIEW_APP'] == 'true'
  # Import CODT2021 Dummy
  csv = CSV.read(File.join(Rails.root, 'db/csv/codt2021/talks.csv'), headers: true)
  Talk.seed(csv.map(&:to_hash))

  csv = CSV.read(File.join(Rails.root, 'db/csv/codt2021/speakers.csv'), headers: true)
  Speaker.seed(csv.map(&:to_hash))

  csv = CSV.read(File.join(Rails.root, 'db/csv/codt2021/talks_speakers.csv'), headers: true)
  csv.each do |row|
    TalksSpeaker.seed(:talk_id, :speaker_id) do |t|
      h = row.to_hash
      t.talk_id = h["talk_id"]
      t.speaker_id = h["speaker_id"]
    end
  end

    
  Video.seed(
    { id: 1, talk_id: 1, site: "vimeo", video_id: "444387842", on_air: true, slido_id: "styoi2cj"},
    { id: 2, talk_id: 2, site: "vimeo", video_id: "442363621", on_air: true, slido_id: "3jtfhpkv"},
    { id: 3, talk_id: 3, site: "vimeo", video_id: "334092219", on_air: true, slido_id: "1qev4oju"},
    { id: 4, talk_id: 4, site: "vimeo", video_id: "410005892", on_air: true, slido_id: "tl9tdhei"},
    { id: 5, talk_id: 5, site: "vimeo", video_id: "303648115", on_air: true, slido_id: "raigsrzj"},
    { id: 6, talk_id: 6, site: "vimeo", video_id: "417159783", on_air: true, slido_id: "maxjcvxp"},
    { id: 7, talk_id: 7, site: "vimeo", video_id: "442385897", on_air: false, slido_id: "styoi2cj"},
    { id: 8, talk_id: 8, site: "vimeo", video_id: "444712888", on_air: false, slido_id: "3jtfhpkv"},
    { id: 9, talk_id: 9, site: "vimeo", video_id: "443856794", on_air: false, slido_id: "1qev4oju"},
  )
end

Sponsor.seed(
  {
    id: 1,
    name: "CircleCI合同会社",
    abbr: "circleci",
    conference_id: 1,
    url: "https://circleci.com/ja/"
  },
  {
    id: 2,
    name: "F5ネットワークスジャパン合同会社",
    abbr: "f5",
    conference_id: 1,
    url: "https://www.f5.com/ja_jp"
  },
  {
    id: 3,
    name: "New Relic株式会社",
    abbr: "newrelic",
    conference_id: 1,
    url: "https://newrelic.com/jp"
  },
  {
    id: 4,
    name: "レッドハット株式会社",
    abbr: "redhat",
    conference_id: 1,
    url: "https://www.redhat.com/en/global/japan"
  },
  {
    id: 5,
    name: "ヴイエムウェア株式会社",
    abbr: "vmware",
    conference_id: 1,
    url: "https://www.vmware.com/jp"
  },
  {
    id: 6,
    name: "NTT データ先端技術株式会社",
    abbr: "intellilink",
    conference_id: 1,
    url: "https://www.hinemos.info"
  },
  {
    id: 7,
    name: "株式会社カサレアル",
    abbr: "casareal",
    conference_id: 1,
    url: "https://www.casareal.co.jp"
  },
  {
    id: 8,
    name: "Canonical Group Ltd.",
    abbr: "canonical",
    conference_id: 1,
    url: "https://ubuntu.com/"
  },
  {
    id: 9,
    name: "AXLBIT株式会社",
    abbr: "axlbit",
    conference_id: 1,
    url: "https://axlbit.com"
  },
  {
    id: 10,
    name: "OSSラボ株式会社",
    abbr: "ossl",
    conference_id: 1,
    url: "http://www.ossl.co.jp"
  },
  {
    id: 11,
    name: "Super Micro Computer, Inc.",
    abbr: "supermicro",
    conference_id: 1,
    url: "https://www.supermicro.com/ja/"
  },
  {
    id: 12,
    name: "ジュニパーネットワークス株式会社",
    abbr: "juniper",
    conference_id: 1,
    url: "https://www.juniper.net/jp/jp/"
  },
  {
    id: 13,
    name: "ヤフー株式会社",
    abbr: "yahoo",
    conference_id: 1,
    url: "https://www.yahoo.co.jp/"
  },
  {
    id: 14,
    name: "株式会社プレイド",
    abbr: "plaid",
    conference_id: 1,
    url: "https://plaid.co.jp/"
  },
)

SponsorType.seed(
  { id: 1,
    conference_id: 1,
    name: "Diamond",
    order: 2,
  },
  { id: 2,
    conference_id: 1,
    name: "Platinum",
    order: 3,
  },
  { id: 3,
    conference_id: 1,
    name: "Gold",
    order: 4,
  },
  { id: 4,
    conference_id: 1,
    name: "Silver",
    order: 5,
  },
  { id: 5,
    conference_id: 1,
    name: "Tool",
    order: 6,
  }
)

[
  [1, 'Diamond', 'circleci', 1],
  [2, 'Diamond', 'f5', 1],
  [3, 'Diamond', 'newrelic', 1],
  [4, 'Diamond', 'redhat', 1],
  [5, 'Platinum', 'vmware', 1],
  [6, 'Platinum', 'intellilink', 1],
  [7, 'Gold', 'casareal', 1],
  [8, 'Gold', 'canonical', 1],
  [9, 'Gold', 'axlbit', 1],
  [10, 'Gold', 'ossl', 1],
  [11, 'Gold', 'supermicro', 1],
  [12, 'Gold', 'juniper', 1],
  [13, 'Silver', 'yahoo', 1],
  [14, 'Tool', 'plaid', 1],
].each do |sponsors_sponsor_type|
  id = sponsors_sponsor_type[0]
  sponsor_type = SponsorType.find_by(name: sponsors_sponsor_type[1], conference_id: sponsors_sponsor_type[3])
  sponsor = Sponsor.find_by(abbr: sponsors_sponsor_type[2], conference_id: sponsors_sponsor_type[3])
  SponsorsSponsorType.seed({id: id, sponsor_type_id: sponsor_type.id, sponsor_id: sponsor.id})
  if sponsors_sponsor_type[1] == 'Booth'
    Booth.seed(:conference_id, :sponsor_id) do |s|
      s.conference_id = sponsors_sponsor_type[3]
      s.sponsor_id = sponsor.id
    end
  end
end

[
  [1, 'circleci', 'sponsors/codt2021/circleci.png', 1],
  [2, 'f5', 'sponsors/codt2021/f5.png', 1],
  [3, 'newrelic', 'sponsors/codt2021/newrelic.png', 1],
  [4, 'redhat', 'sponsors/codt2021/redhat.png', 1],
  [5, 'vmware', 'sponsors/codt2021/vmware.png', 1],
  [6, 'intellilink', 'sponsors/codt2021/intellilink.png', 1],
  [7, 'casareal', 'sponsors/codt2021/casareal.png', 1],
  [8, 'canonical', 'sponsors/codt2021/canonical.png', 1],
  [9, 'axlbit', 'sponsors/codt2021/axlbit.png', 1],
  [10, 'ossl', 'sponsors/codt2021/ossl.png', 1],
  [11, 'supermicro', 'sponsors/codt2021/supermicro.png', 1],
  [12, 'juniper', 'sponsors/codt2021/juniper.png', 1],
  [13, 'yahoo', 'sponsors/codt2021/yahoo.png', 1],
  [14, 'plaid', 'sponsors/codt2021/plaid.png', 1],
].each do |logo|
  SponsorAttachment.seed(
    { id: logo[0],
      sponsor_id: Sponsor.find_by(abbr: logo[1], conference_id: logo[3]).id,
      type: 'SponsorAttachmentLogoImage',
      url: logo[2]
    }
  )
end

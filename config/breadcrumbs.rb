crumb :root do
  link "ホーム", root_path
end

# リンクにしてクリックされるとエラーとなるためsearch_pathはなし
crumb :search do
  link "検索結果"
end

crumb :samedrugsearch do
  link "同種薬検索結果", samedrugsearch_path
  parent :search
end

crumb :about_medipra do
  link "medipraについて", about_medipra_path
end

crumb :privacy_policy do
  link "プライバシーポリシー", privacy_policy_path
end

crumb :contact do
  link "お問い合わせ", contact_path
end
